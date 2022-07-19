.class public Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5PhotoPlugin.java"


# static fields
.field private static final BEAUTY_LEVEL:Ljava/lang/String; = "beautyLevel"

.field private static final BIZ_SCENE:Ljava/lang/String; = "PUBLICID"

.field private static final DATA_TYPE:Ljava/lang/String; = "dataType"

.field private static final DATA_URL:Ljava/lang/String; = "dataURL"

.field private static final FILE_URL:Ljava/lang/String; = "fileURL"

.field private static final MULTIMEDIA_CONFIG:Ljava/lang/String; = "multimediaConfig"

.field public static final PHOTO:Ljava/lang/String; = "photo"

.field private static final PHOTO_JPG:Ljava/lang/String; = "jpg"

.field private static final PHOTO_PNG:Ljava/lang/String; = "png"

.field private static final PHOTO_UPLOAD:Ljava/lang/String; = "upload"

.field private static final SCOPE:Ljava/lang/String; = "chat"

.field public static final TAG:Ljava/lang/String; = "H5PhotoPlugin"

.field private static final UPLOAD_TO:Ljava/lang/String; = "uploadTo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "x3"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->onPhotoReady(Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p4, "x4"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->processImgUrl(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # [B
    .param p10, "x10"    # I
    .param p11, "x11"    # I

    .line 68
    invoke-direct/range {p0 .. p11}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->uploadRpc(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)V

    return-void
.end method

.method private getMultimediaID(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;[BII)V
    .locals 14
    .param p1, "info"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "config"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p4, "bytes"    # [B
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 440
    move-object/from16 v0, p2

    const-string v1, "business"

    const-string v2, "NebulaBiz"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "business":Ljava/lang/String;
    const-string v2, "compress"

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 442
    .local v2, "compress":I
    const-string v3, "URGENT"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v12

    new-instance v13, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    move-object v3, v13

    move-object v4, p0

    move v5, v2

    move-object v6, p1

    move-object/from16 v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p4

    move-object v11, v1

    invoke-direct/range {v3 .. v11}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;II[BLjava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method

.method private onPhotoReady(Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 8
    .param p1, "photoInfo"    # Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 164
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 165
    const-string v1, "allowEdit"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 166
    .local v0, "allowEdit":Z
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->isPicCurrentlyTaked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "camera"

    goto :goto_0

    :cond_0
    const-string v1, "assets"

    .line 167
    .local v1, "scene":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "photo allowEdit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5PhotoPlugin"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-direct {p0, p2, v2, p3, v1}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->processImgUrl(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 171
    .end local v2    # "imageUrl":Ljava/lang/String;
    return-void

    .line 172
    :cond_1
    const-class v2, Lcom/alipay/mobile/beehive/service/PhotoService;

    .line 173
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/inside/utils/TinyUtils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/beehive/service/PhotoService;

    .line 175
    .local v2, "photoService":Lcom/alipay/mobile/beehive/service/PhotoService;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    .line 176
    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v3

    .line 177
    .local v3, "microApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    .line 178
    .local v5, "bundle":Landroid/os/Bundle;
    move-object v5, v4

    const/4 v6, 0x1

    const-string/jumbo v7, "saveOnEdit"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;

    invoke-direct {v4, p0, p2, p3, v1}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    invoke-virtual {v2, v3, p1, v5, v4}, Lcom/alipay/mobile/beehive/service/PhotoService;->editPhoto(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/os/Bundle;Lcom/alipay/mobile/beehive/service/PhotoEditListener;)V

    .line 199
    .end local v2    # "photoService":Lcom/alipay/mobile/beehive/service/PhotoService;
    .end local v3    # "microApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local v5    # "bundle":Landroid/os/Bundle;
    return-void
.end method

.method private photo(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 117
    const-class v0, Lcom/alipay/mobile/beehive/service/PhotoService;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/utils/TinyUtils;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoService;

    .line 120
    .local v0, "photoService":Lcom/alipay/mobile/beehive/service/PhotoService;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 123
    .local v1, "microApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    const/4 v2, 0x0

    .line 125
    .local v2, "beautyImageLevel":F
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v5, "beautyLevel"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move v2, v3

    .line 128
    const-string v3, "H5PhotoPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "beautyImageLevel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    nop

    .line 134
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 135
    :cond_0
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 136
    return-void

    .line 129
    :catch_0
    move-exception v3

    move-object v3, v4

    .line 131
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 132
    return-void

    .line 139
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v4, "bundle":Landroid/os/Bundle;
    move-object v4, v3

    const-string v5, "beautyImageLevel"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 141
    const/4 v3, 0x1

    const-string/jumbo v5, "maxSelect"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/inside/utils/TinyUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alipay/mobile/nebulaappproxy/R$string;->ok:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "finishText"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v3, 0x0

    const-string v5, "enablePreview"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/mobile/beehive/service/PhotoService;->selectPhoto(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Lcom/alipay/mobile/beehive/service/PhotoSelectListener;)V

    .line 159
    return-void
.end method

.method private processImgUrl(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "originalPath"    # Ljava/lang/String;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p4, "scene"    # Ljava/lang/String;

    .line 206
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "imageUrl":Ljava/lang/String;
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v4    # "imageUrl":Ljava/lang/String;
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5PhotoPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private uploadRpc(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 14
    .param p1, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "upload"    # Z
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "dataType"    # Ljava/lang/String;
    .param p6, "fileUrl"    # Ljava/lang/String;
    .param p7, "scene"    # Ljava/lang/String;
    .param p8, "originalPath"    # Ljava/lang/String;
    .param p9, "bytes"    # [B
    .param p10, "width"    # I
    .param p11, "height"    # I

    .line 401
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 402
    .local v2, "info":Lcom/alibaba/fastjson/JSONObject;
    const/4 v3, 0x0

    const-string/jumbo v4, "multimediaConfig"

    if-eqz p3, :cond_3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 403
    nop

    .line 404
    const-string/jumbo v5, "uploadTo"

    const-string v6, "123123"

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "photoReference":Ljava/lang/String;
    nop

    .line 406
    const-string v7, "PUBLICID"

    const-string v8, "chat"

    move-object v9, v5

    move-object/from16 v10, p4

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v7 .. v12}, Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil;->getUploadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;

    move-result-object v6

    .line 407
    .local v6, "upRes":Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;
    const-string v7, ""

    if-eqz v6, :cond_0

    iget-object v8, v6, Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    const-string/jumbo v9, "uploadedImageID"

    invoke-virtual {v2, v9, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    if-eqz v6, :cond_1

    iget-object v7, v6, Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;->url:Ljava/lang/String;

    :cond_1
    const-string/jumbo v8, "uploadedImageURL"

    invoke-virtual {v2, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    if-eqz v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string/jumbo v8, "uploadedSuccess"

    invoke-virtual {v2, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    if-eqz v6, :cond_3

    iget v7, v6, Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;->status:I

    const/16 v8, 0x64

    if-eq v7, v8, :cond_3

    .line 411
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/inside/utils/TinyUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/nebulaappproxy/R$string;->networkbusi:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "error"

    invoke-virtual {v2, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .end local v5    # "photoReference":Ljava/lang/String;
    .end local v6    # "upRes":Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;
    :cond_3
    const-string v5, "fileURL"

    move-object/from16 v10, p5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 415
    invoke-virtual {v2, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, p4

    goto :goto_2

    .line 418
    :cond_4
    const-string v6, "dataURL"

    move-object/from16 v11, p4

    invoke-virtual {v2, v6, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual {v2, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :goto_2
    const-string/jumbo v5, "scene"

    move-object/from16 v12, p7

    invoke-virtual {v2, v5, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v5, "storeOriginal"

    invoke-static {v0, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 425
    const-string/jumbo v3, "originalFileURL"

    move-object/from16 v13, p8

    invoke-virtual {v2, v3, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 424
    :cond_5
    move-object/from16 v13, p8

    .line 428
    :goto_3
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 429
    const/4 v3, 0x0

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    move-object v3, p0

    move-object v4, v2

    move-object v6, p1

    move-object/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v3 .. v9}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->getMultimediaID(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;[BII)V

    return-void

    .line 432
    :cond_6
    move-object v3, p1

    invoke-interface {p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 434
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 103
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 105
    const-string v1, "H5PhotoPlugin"

    const-string/jumbo v3, "not from h5 page."

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 107
    return v2

    .line 109
    :cond_0
    const-string/jumbo v1, "photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->photo(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 111
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_1
    return v2
.end method

.method public imageQuality(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "quality"    # I

    .line 373
    if-nez p1, :cond_0

    .line 374
    return-object p1

    .line 376
    :cond_0
    const/16 v0, 0x32

    const/16 v1, 0x64

    const-string v2, "H5PhotoPlugin"

    if-lt p2, v0, :cond_1

    if-le p2, v1, :cond_2

    .line 377
    :cond_1
    const-string/jumbo v0, "set quality as default 75."

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/16 p2, 0x4b

    .line 381
    :cond_2
    if-eq p2, v1, :cond_3

    .line 383
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 384
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 385
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 386
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    move-object v4, v1

    invoke-static {v1, v3, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object p1, v1

    .line 387
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 388
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-object p1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 98
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 99
    return-void
.end method
