.class final Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;
.super Ljava/lang/Object;
.source "TemplateTinyApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->prepareTemplateConfig(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->c:Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string/jumbo v0, "templateConfigUrl"

    .line 124
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 125
    .local v3, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isEnableTemplateApp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-nez v1, :cond_1

    .line 132
    # getter for: Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "prepareTemplateConfig...appInfo is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 136
    :cond_1
    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    move-object v4, v2

    .line 137
    .local v4, "extendInfo":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    # getter for: Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "prepareTemplateConfig...extendInfo is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 143
    :cond_2
    :try_start_0
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v5, v2

    .line 145
    .local v5, "extendInfoJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v1

    const-string v6, "launchParams"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    .line 146
    .local v6, "launchParams":Ljava/lang/String;
    move-object v6, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    # getter for: Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "prepareTemplateConfig...launchParams is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 151
    :cond_3
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v7, v2

    .line 152
    .local v7, "launchParamsJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v1

    if-nez v1, :cond_4

    .line 153
    return-void

    .line 155
    :cond_4
    const-string/jumbo v1, "templateAppId"

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    return-void

    .line 160
    :cond_5
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v2

    .line 161
    .local v8, "templateConfigUrl":Ljava/lang/String;
    move-object v8, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 163
    const-string/jumbo v1, "templateConfig"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 164
    .local v2, "templateConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 171
    :cond_6
    # getter for: Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "prepareTemplateConfig..."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v10, v10, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v2    # "templateConfig":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_1

    .line 166
    .restart local v2    # "templateConfig":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    # getter for: Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "prepareTemplateConfig...not template app: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v9, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_8
    return-void

    .line 173
    .end local v2    # "templateConfig":Lcom/alibaba/fastjson/JSONObject;
    :cond_9
    # getter for: Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "prepareTemplateConfig url mode..."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v10, v10, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 176
    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_a
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->c:Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v9, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->downloadTemplateConfig(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v9, v8}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->access$300(Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_b

    .line 182
    const-string/jumbo v9, "templateApp"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    :cond_b
    const-string v1, "TINY_TEMPLATE_APP"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 186
    .local v2, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object v2, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v9, "appId"

    iget-object v10, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v10, v10, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 187
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, " "

    goto :goto_2

    :cond_c
    move-object v9, v8

    :goto_2
    invoke-virtual {v1, v0, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 188
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v2    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v5    # "extendInfoJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "launchParams":Ljava/lang/String;
    .end local v7    # "launchParamsJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "templateConfigUrl":Ljava/lang/String;
    return-void

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Throwable;
    # getter for: Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "prepareTemplateConfig e..."

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
