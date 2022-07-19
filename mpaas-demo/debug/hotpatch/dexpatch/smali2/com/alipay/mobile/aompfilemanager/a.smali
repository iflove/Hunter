.class public final Lcom/alipay/mobile/aompfilemanager/a;
.super Ljava/lang/Object;
.source "AOMPFileTinyAppUtils.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .line 25
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 38
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const-string v1, "AOMPFileTinyAppUtils"

    if-eqz v0, :cond_2

    .line 39
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 41
    if-eqz v0, :cond_1

    .line 43
    :try_start_0
    const-class v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 44
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 50
    :cond_0
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    :cond_1
    goto :goto_0

    .line 54
    :cond_2
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 56
    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;->encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localId :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v0

    .line 61
    :cond_3
    const-string p0, "apmToolService ==null "

    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 154
    if-eqz p0, :cond_1

    const-string v0, "https://resource/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 156
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 158
    const-string p1, "/"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 159
    const-string p1, "\\."

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 160
    if-eqz p0, :cond_1

    array-length p1, p0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 161
    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 163
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 164
    return-object p0

    .line 168
    :cond_0
    goto :goto_0

    .line 166
    :catch_0
    move-exception p0

    .line 167
    const-string p1, "AOMPFileTinyAppUtils"

    invoke-static {p1, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/aompfilemanager/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 81
    :cond_1
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 88
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 90
    :cond_0
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 93
    :cond_1
    const-string/jumbo v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 95
    :cond_2
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 98
    :cond_3
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 101
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 100
    :cond_4
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 103
    :cond_5
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Pdf:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Pdf:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 106
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 105
    :cond_6
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 108
    :cond_7
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Doc:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 109
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Doc:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 111
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 110
    :cond_8
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 113
    :cond_9
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Docx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 114
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Docx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 116
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 115
    :cond_a
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 118
    :cond_b
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Xls:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 119
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Xls:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 121
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 120
    :cond_c
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 123
    :cond_d
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Xlsx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 124
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Xlsx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 126
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 125
    :cond_e
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 128
    :cond_f
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->PPt:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 129
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->PPt:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 131
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto/16 :goto_0

    .line 130
    :cond_10
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_0

    .line 133
    :cond_11
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->PPtx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 134
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->PPtx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 136
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_0

    .line 135
    :cond_12
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_0

    .line 139
    :cond_13
    const-string/jumbo v0, "other"

    invoke-static {p0, v0}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 141
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_0

    .line 143
    :cond_14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "apml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 144
    nop

    .line 145
    invoke-static {p0}, Lcom/alipay/mobile/aompfilemanager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_15
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " filePath:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AOMPFileTinyAppUtils"

    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 206
    const-string/jumbo v0, "other"

    if-nez p0, :cond_0

    return-object v0

    .line 210
    :cond_0
    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "audio"

    const-string/jumbo v4, "video"

    if-eqz v2, :cond_1

    .line 211
    move-object v0, v1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    move-object v0, v4

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    move-object v0, v3

    goto :goto_0

    .line 216
    :cond_3
    sget-object v1, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Pdf:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v1}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 217
    sget-object p0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Pdf:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {p0}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->fileType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_4
    nop

    .line 234
    :goto_0
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 176
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const-string v1, "AOMPFileTinyAppUtils"

    if-eqz v0, :cond_2

    .line 177
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 178
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 179
    if-eqz v0, :cond_1

    .line 181
    :try_start_0
    const-class v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 182
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 188
    :cond_0
    goto :goto_0

    .line 186
    :catchall_0
    move-exception p0

    .line 187
    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :cond_1
    goto :goto_0

    .line 192
    :cond_2
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 194
    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localId :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " path:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object v0

    .line 199
    :cond_3
    const-string p0, "apmToolService ==null "

    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
