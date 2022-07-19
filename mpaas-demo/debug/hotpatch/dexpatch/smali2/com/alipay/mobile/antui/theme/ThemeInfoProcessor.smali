.class public Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor;
.super Ljava/lang/Object;
.source "ThemeInfoProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dealConfig(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/theme/ThemeCallback;)V
    .locals 10
    .param p0, "bundle"    # Ljava/lang/String;
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "themeCallback"    # Lcom/alipay/mobile/antui/theme/ThemeCallback;

    .line 36
    :try_start_0
    const-class v0, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 38
    .local v2, "themeModels":Ljava/util/List;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    .line 39
    .local v0, "model":Lcom/alipay/mobile/antui/theme/model/AUThemeModel;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 40
    .local v3, "currentTime":J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 42
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v6, v0, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->start_time:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->startTime:J

    .line 43
    iget-object v6, v0, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->end_time:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->endTime:J

    .line 44
    iget-object v6, v0, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->theme_url:Ljava/lang/String;

    .line 45
    .local v6, "url":Ljava/lang/String;
    iget-wide v7, v0, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->startTime:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_0

    iget-wide v7, v0, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->endTime:J

    cmp-long v9, v3, v7

    if-gez v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 46
    new-instance v7, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;

    invoke-direct {v7}, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;-><init>()V

    .line 47
    .local v1, "request":Lcom/alipay/mobile/antui/excutor/FileLoadRequest;
    move-object v1, v7

    const-string/jumbo v8, "theme"

    iput-object v8, v7, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->docPath:Ljava/lang/String;

    .line 48
    iput-object v6, v1, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->fileName:Ljava/lang/String;

    .line 49
    iput-object v6, v1, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->zipName:Ljava/lang/String;

    .line 50
    iput-object v6, v1, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->fileId:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getInstance()Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getFileLoadExecutor()Lcom/alipay/mobile/antui/excutor/FileLoadExecutor;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;

    invoke-direct {v8, p0, v0, p2}, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;-><init>(Ljava/lang/String;Lcom/alipay/mobile/antui/theme/model/AUThemeModel;Lcom/alipay/mobile/antui/theme/ThemeCallback;)V

    invoke-interface {v7, v1, v8}, Lcom/alipay/mobile/antui/excutor/FileLoadExecutor;->download(Lcom/alipay/mobile/antui/excutor/FileLoadRequest;Lcom/alipay/mobile/antui/excutor/FileLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "model":Lcom/alipay/mobile/antui/theme/model/AUThemeModel;
    .end local v1    # "request":Lcom/alipay/mobile/antui/excutor/FileLoadRequest;
    .end local v2    # "themeModels":Ljava/util/List;
    .end local v3    # "currentTime":J
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThemeInfoProcessor"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public static getConfig(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/theme/ThemeCallback;)V
    .locals 2
    .param p0, "bundle"    # Ljava/lang/String;
    .param p1, "code_key"    # Ljava/lang/String;
    .param p2, "themeCallback"    # Lcom/alipay/mobile/antui/theme/ThemeCallback;

    .line 22
    invoke-static {}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getInstance()Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getConfigExecutor()Lcom/alipay/mobile/antui/excutor/ConfigExecutor;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    .local v1, "configExecutor":Lcom/alipay/mobile/antui/excutor/ConfigExecutor;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$1;-><init>(Ljava/lang/String;Lcom/alipay/mobile/antui/theme/ThemeCallback;)V

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/antui/excutor/ConfigExecutor;->getConfig(Ljava/lang/String;Lcom/alipay/mobile/antui/excutor/ConfigCallback;)V

    .line 31
    :cond_0
    return-void
.end method
