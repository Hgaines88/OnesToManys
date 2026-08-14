from pydantic import BaseModel, Field, field_validator


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
