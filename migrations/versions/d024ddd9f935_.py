"""empty message

Revision ID: d024ddd9f935
Revises: 1a170a4a450c
Create Date: 2022-07-14 01:59:07.687474

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'd024ddd9f935'
down_revision = '1a170a4a450c'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('train_result', sa.Column('type', sa.Integer(), nullable=False))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('train_result', 'type')
    # ### end Alembic commands ###
