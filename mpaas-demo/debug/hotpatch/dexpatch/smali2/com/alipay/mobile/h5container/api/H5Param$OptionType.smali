.class public final enum Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
.super Ljava/lang/Enum;
.source "H5Param.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5Param;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/h5container/api/H5Param$OptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

.field public static final enum ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

.field public static final enum MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

.field public static final enum TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 426
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    const-string v1, "ICON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    new-instance v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    const-string v5, "MENU"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    .line 425
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 425
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 425
    const-class v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
    .locals 1

    .line 425
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    return-object v0
.end method
