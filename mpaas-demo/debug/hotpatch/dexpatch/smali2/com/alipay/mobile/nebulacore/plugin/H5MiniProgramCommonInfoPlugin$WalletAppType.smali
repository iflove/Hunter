.class final enum Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;
.super Ljava/lang/Enum;
.source "H5MiniProgramCommonInfoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WalletAppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum H5_OR_OTHER:Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

.field public static final enum INTERNAL_MINI:Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

.field public static final enum OPEN_PLATFORM_MINI:Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

.field private static final synthetic a:[Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    const-string v1, "H5_OR_OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->H5_OR_OTHER:Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    .line 37
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    const-string v3, "OPEN_PLATFORM_MINI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->OPEN_PLATFORM_MINI:Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    .line 41
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    const-string v5, "INTERNAL_MINI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->INTERNAL_MINI:Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    .line 29
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->a:[Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;
    .locals 1

    .line 29
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->a:[Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    return-object v0
.end method
