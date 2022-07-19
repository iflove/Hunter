.class public final enum Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;
.super Ljava/lang/Enum;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/utils/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DifferenceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

.field public static final enum Day:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

.field public static final enum Hour:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

.field public static final enum Minute:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

.field public static final enum Second:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    const-string v1, "Second"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Second:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    .line 29
    new-instance v1, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    const-string v3, "Minute"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Minute:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    .line 32
    new-instance v3, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    const-string v5, "Hour"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Hour:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    .line 35
    new-instance v5, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    const-string v7, "Day"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->Day:Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    .line 22
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->$VALUES:[Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;
    .locals 1

    .line 22
    sget-object v0, Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->$VALUES:[Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    invoke-virtual {v0}, [Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/antui/utils/DateUtils$DifferenceMode;

    return-object v0
.end method
