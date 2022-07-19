.class final enum Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;
.super Ljava/lang/Enum;
.source "PerformanceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum H5:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

.field public static final enum TINY_APP:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

.field public static final enum TINY_APP_RN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

.field public static final enum UNKNOWN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

.field private static final synthetic b:[Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 126
    new-instance v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "-1"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->UNKNOWN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    .line 127
    new-instance v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    const-string v3, "TINY_APP"

    const/4 v4, 0x1

    const-string v5, "1"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->TINY_APP:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    .line 128
    new-instance v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    const-string v5, "H5"

    const/4 v6, 0x2

    const-string v7, "2"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->H5:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    .line 129
    new-instance v5, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    const-string v7, "TINY_APP_RN"

    const/4 v8, 0x3

    const-string v9, "3"

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->TINY_APP_RN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    .line 125
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->b:[Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput-object p3, p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->a:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 125
    const-class v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;
    .locals 1

    .line 125
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->b:[Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$AppType;

    return-object v0
.end method
