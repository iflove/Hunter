.class public final enum Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;
.super Ljava/lang/Enum;
.source "PowerUsageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum APP:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum BLUETOOTH:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum CELL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum IDLE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum KERNEL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum MEDIASERVER:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum PHONE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum SCREEN:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum WIFI:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 77
    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->IDLE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string v3, "CELL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->CELL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v3, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string v5, "PHONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->PHONE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v5, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string v7, "WIFI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->WIFI:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string v9, "BLUETOOTH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->BLUETOOTH:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v9, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string v11, "SCREEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->SCREEN:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v11, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string v13, "APP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->APP:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v13, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string v15, "KERNEL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->KERNEL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v15, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string v14, "MEDIASERVER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->MEDIASERVER:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    .line 76
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->$VALUES:[Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 76
    const-class v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;
    .locals 1

    .line 76
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->$VALUES:[Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    return-object v0
.end method
