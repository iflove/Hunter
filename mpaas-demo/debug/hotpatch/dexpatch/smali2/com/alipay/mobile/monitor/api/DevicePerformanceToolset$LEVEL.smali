.class public final enum Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;
.super Ljava/lang/Enum;
.source "DevicePerformanceToolset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

.field public static final enum HIGH:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

.field public static final enum LOW:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

.field public static final enum MIDDLE:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

.field public static final enum UNKNOWN:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 60
    new-instance v0, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->HIGH:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    .line 64
    new-instance v1, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    const-string v4, "MIDDLE"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->MIDDLE:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    .line 68
    new-instance v4, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    const-string v7, "LOW"

    invoke-direct {v4, v7, v6, v5}, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->LOW:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    .line 72
    new-instance v7, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    const-string v8, "UNKNOWN"

    const/4 v9, -0x1

    invoke-direct {v7, v8, v3, v9}, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->UNKNOWN:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    .line 56
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    aput-object v0, v8, v2

    aput-object v1, v8, v5

    aput-object v4, v8, v6

    aput-object v7, v8, v3

    sput-object v8, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->$VALUES:[Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->value:I

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;
    .locals 1

    .line 56
    sget-object v0, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->$VALUES:[Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    invoke-virtual {v0}, [Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->value:I

    return v0
.end method
