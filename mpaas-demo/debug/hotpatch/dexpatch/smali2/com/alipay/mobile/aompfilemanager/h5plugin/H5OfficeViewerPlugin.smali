.class public Lcom/alipay/mobile/aompfilemanager/h5plugin/H5OfficeViewerPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5OfficeViewerPlugin.java"


# static fields
.field private static final OFFICE_VIEWER:Ljava/lang/String; = "openDocument"

.field private static final TAG:Ljava/lang/String; = "H5OfficeViewerPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    move-object p1, v1

    .line 104
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/utils/io/TinyAppFileUtils;->containsRelativeParentPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    return-object v1

    .line 110
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 114
    :cond_3
    return-object p1

    .line 111
    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 8

    .line 33
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "openDocument"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 37
    const-string v2, "filePath"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    const-string v4, "fileType"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x1

    aput-object v1, v4, p1

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v5, "aciton : %s; file type : %s; file path : %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5OfficeViewerPlugin"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    nop

    .line 43
    invoke-direct {p0, v3}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5OfficeViewerPlugin;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0xfad

    const/16 v6, 0xfac

    const/16 v7, 0xfab

    if-nez v4, :cond_7

    const-string v4, "../"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 48
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 50
    if-lez v4, :cond_2

    .line 51
    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 57
    nop

    .line 58
    const/16 v5, 0xfac

    goto :goto_2

    .line 59
    :cond_3
    sget-object v4, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Pdf:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->checkType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 64
    nop

    .line 65
    const/4 v0, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Doc:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->checkType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Docx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 66
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->checkType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Xls:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 67
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->checkType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Xlsx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 68
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->checkType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->PPt:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 69
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->checkType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->PPtx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 70
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->checkType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 74
    :cond_5
    nop

    .line 75
    goto :goto_2

    .line 71
    :cond_6
    :goto_0
    nop

    .line 72
    goto :goto_2

    .line 45
    :cond_7
    :goto_1
    nop

    .line 46
    const/16 v5, 0xfab

    .line 78
    :goto_2
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    if-nez v0, :cond_a

    .line 81
    nop

    .line 82
    if-eq v5, v7, :cond_9

    if-eq v5, v6, :cond_8

    const-string/jumbo v2, "\u6682\u4e0d\u652f\u6301\u6b64\u6587\u4ef6\u7c7b\u578b"

    goto :goto_3

    .line 87
    :cond_8
    const-string/jumbo v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    goto :goto_3

    .line 84
    :cond_9
    nop

    .line 85
    const-string/jumbo v2, "\u8def\u5f84\u4e0d\u5408\u6cd5"

    .line 90
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v3, "errorMessage"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_a
    invoke-interface {p2, v1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z

    .line 94
    return p1

    .line 34
    :cond_b
    :goto_4
    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .line 28
    const-string/jumbo v0, "openDocument"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 29
    return-void
.end method
