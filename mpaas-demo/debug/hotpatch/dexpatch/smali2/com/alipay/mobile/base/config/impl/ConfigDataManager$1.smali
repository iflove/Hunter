.class final Lcom/alipay/mobile/base/config/impl/ConfigDataManager$1;
.super Ljava/util/HashMap;
.source "ConfigDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v2, "MESSAGE_BOX_DATA_ENCRYPT"

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v2, "MESSAGE_BOX_ATTEMPT_OLD_DATA"

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v2, "h5_secJsApiCallConfig"

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v2, "h5_jsapiPermission"

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v1, "h5_uploadFile_whiteList"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
