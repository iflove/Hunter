.class public Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig;
.super Ljava/lang/Object;
.source "WalletDefaultConfig.java"


# static fields
.field public static final mSwitchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig;->mSwitchMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
