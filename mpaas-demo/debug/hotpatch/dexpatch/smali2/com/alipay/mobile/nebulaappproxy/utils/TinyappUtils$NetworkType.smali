.class public final enum Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;
.super Ljava/lang/Enum;
.source "TinyappUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

.field public static final enum NETWORK_MOBILE:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

.field public static final enum NETWORK_NONE:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 665
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    const-string v1, "NETWORK_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->NETWORK_NONE:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    .line 666
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    const-string v3, "NETWORK_WIFI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->NETWORK_WIFI:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    .line 667
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    const-string v5, "NETWORK_MOBILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->NETWORK_MOBILE:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    .line 664
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->$VALUES:[Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 664
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 664
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;
    .locals 1

    .line 664
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->$VALUES:[Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    return-object v0
.end method
