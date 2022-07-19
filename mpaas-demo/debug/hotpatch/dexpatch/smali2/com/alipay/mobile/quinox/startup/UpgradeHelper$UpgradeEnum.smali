.class public final enum Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
.super Ljava/lang/Enum;
.source "UpgradeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/startup/UpgradeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpgradeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWNGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

.field public static final enum NEW:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

.field public static final enum NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

.field public static final enum UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

.field private static final synthetic a:[Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 58
    new-instance v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 59
    new-instance v1, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    const-string v3, "NEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NEW:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 60
    new-instance v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    const-string v5, "UPGRADE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 61
    new-instance v5, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    const-string v7, "DOWNGRADE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->DOWNGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 57
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->a:[Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    .locals 1

    .line 57
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->a:[Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v0
.end method
