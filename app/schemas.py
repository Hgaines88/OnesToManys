from pydantic import BaseModel, Field, field_validator
from typing import Literal

CollectionStatus = Literal[
    "concept",
    "in-production",
    "released",
    "archived",
]

class DesignerCreate(BaseModel):
    full_name: str = Field(min_length=1, max_length=120)
    nationality: str | None = None
    birth_year: int | None = Field(default=None, ge=1800, le=2100)
    website: str | None = None
    biography: str | None = None

    @field_validator("full_name")
    @classmethod
    def full_name_must_not_be_blank(cls, value: str) -> str:
        cleaned_value = value.strip()

        if not cleaned_value:
            raise ValueError("Full name must not be blank")

        return cleaned_value

class CollectionCreate(BaseModel):
    designer_id: int = Field(ge=1)
    label: str = Field(min_length=1, max_length=120)
    name: str | None = Field(default=None, max_length=120)
    season: str = Field(min_length=1, max_length=40)
    release_year: int = Field(ge=1900, le=2100)
    status: CollectionStatus
    piece_count: int | None = Field(default=None, ge=0)
    description: str | None = None

    @field_validator("label", "season")
    @classmethod
    def required_text_must_not_be_blank(cls, value: str) -> str:
        cleaned_value = value.strip()

        if not cleaned_value:
            raise ValueError("Value must not be blank")

        return cleaned_value

    @field_validator("name")
    @classmethod
    def optional_name_must_not_be_blank(
        cls,
        value: str | None,
    ) -> str | None:
        if value is None:
            return None

        cleaned_value = value.strip()

        if not cleaned_value:
            raise ValueError(
                "Name must be meaningful when provided"
            )

        return cleaned_value