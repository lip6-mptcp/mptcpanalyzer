#!/usr/bin/env python
# -*- coding: utf-8 -*-
# from pkgutil import extend_path

# from mptcpanalyzer.core import get_basename
import logging
# import os
# from . import plot
# from .core import load_fields_to_export_from_file

# __path__ = extend_path(__path__, __name__)


# h = logging.FileHandler(".mptcpanalyzer-" + str(os.getpid()), delay=True)
# TODO let final script set the handler
handler = logging.FileHandler("mptcpanalyzer.log", delay=False)

logger = logging.getLogger(__name__)
logger.addHandler(handler)
logger.setLevel(logging.CRITICAL)


# table_name = "connections"

# __all__ = [
    # "table_name",
# ]
