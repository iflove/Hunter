.class synthetic Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext$1;
.super Ljava/lang/Object;
.source "H5BaseBridgeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$alipay$mobile$h5container$api$H5Event$Error:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->values()[Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext$1;->$SwitchMap$com$alipay$mobile$h5container$api$H5Event$Error:[I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext$1;->$SwitchMap$com$alipay$mobile$h5container$api$H5Event$Error:[I

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext$1;->$SwitchMap$com$alipay$mobile$h5container$api$H5Event$Error:[I

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext$1;->$SwitchMap$com$alipay$mobile$h5container$api$H5Event$Error:[I

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    return-void
.end method
