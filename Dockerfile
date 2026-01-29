# Step 1: 使用官方 runners 镜像作为基础
ARG runners_tag=2.6.1
FROM n8nio/runners:${runners_tag}

# Step 2: 切换到 root 用户以便安装
USER root

# 你可以根据需要添加更多库
RUN pip3 install \
      # 数据处理
      numpy \
      pandas \
      openpyxl \
      # HTTP 请求
      requests \
      httpx \
      aiohttp \
      # HTML/XML 解析
      beautifulsoup4 \
      html5lib \
      # 数据库
      sqlalchemy \
      pymongo \
      redis \
      # 日期时间
      python-dateutil \
      arrow \
      pytz \
      # 数据验证
      pydantic \
      email-validator \
      phonenumbers \
      # 工具类
      tqdm \
      pyyaml \
      python-dotenv \
      loguru \
      tenacity \
      faker \
      tabulate \
      jinja2 \
      # JWT/加密
      pyjwt \
      passlib \
      # Markdown
      markdown

# 切换回来到 runner 用户
USER runner

