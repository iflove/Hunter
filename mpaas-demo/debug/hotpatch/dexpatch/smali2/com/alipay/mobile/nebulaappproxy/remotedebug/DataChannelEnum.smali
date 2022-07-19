.class public final enum Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;
.super Ljava/lang/Enum;
.source "DataChannelEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

.field public static final enum WEBSOCKET_CHANNEL:Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    const-string v1, "WEBSOCKET_CHANNEL"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;->WEBSOCKET_CHANNEL:Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    .line 7
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;->$VALUES:[Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;->$VALUES:[Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    return-object v0
.end method
