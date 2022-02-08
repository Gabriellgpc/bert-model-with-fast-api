# -*- coding: utf-8 -*-
# @Author: Luis Condados
# @Date:   2022-02-07 20:38:24
# @Last Modified by:   Luis Condados
# @Last Modified time: 2022-02-07 20:51:15

from pydantic import BaseModel
from typing import Optional
from typing import List

class RequestTemplate(BaseModel):
    address: str
    location: str