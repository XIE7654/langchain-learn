c = get_config()

c.ServerApp.ip = '0.0.0.0'
c.ServerApp.port = 8888
c.ServerApp.open_browser = False
c.ServerApp.allow_root = True
c.ServerApp.notebook_dir = '/workspace'
c.ServerApp.allow_remote_access = True  # 允许远程访问
c.ServerApp.allow_origin = '*'          # 允许任意来源的跨域请求（根据安全策略调整）
c.ServerApp.trust_x_headers = True 

# 设置密码（此处为示例，请替换为你自己生成的密码哈希）
c.ServerApp.token = '334496741e114fd0302607c4bb190c0b'
# c.ServerApp.password = 'argon2:$argon2id$v=19$m=10240,t=10,p=8$EXAMPLE...'