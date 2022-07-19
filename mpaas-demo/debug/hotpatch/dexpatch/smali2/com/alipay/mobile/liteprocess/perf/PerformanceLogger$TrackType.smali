.class public final enum Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;
.super Ljava/lang/Enum;
.source "PerformanceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PAGE_SWITCH_DOM_READY:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_APP_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_BEGIN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_DOM_READY:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_FIRSTPAINT_DATALEN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_FIRSTPAINT_RENDERTIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_FIRSTPAINT_TRANSFERTIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_FOREGROUND_START_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_H5_RPC_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_JS_FINISH:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_MAP_CREAT_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_OPEN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_PAGE_FINISH:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_PAGE_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_PAGE_LOADED_CLIENT:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_PAGE_RENDER:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_PAGE_START:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_PREPARE:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_PROCESS_LAUNCH_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_WINDOW_APPEAR:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field public static final enum STARTUP_WORKER_FRAMEWORK_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

.field private static final synthetic a:[Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 100
    new-instance v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v1, "STARTUP_OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_OPEN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 101
    new-instance v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v3, "STARTUP_PREPARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PREPARE:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 102
    new-instance v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v5, "STARTUP_BEGIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_BEGIN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 103
    new-instance v5, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v7, "STARTUP_WINDOW_APPEAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_WINDOW_APPEAR:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 104
    new-instance v7, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v9, "STARTUP_PAGE_START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_START:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 105
    new-instance v9, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v11, "STARTUP_PAGE_FINISH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_FINISH:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 106
    new-instance v11, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v13, "STARTUP_PAGE_RENDER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_RENDER:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 107
    new-instance v13, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v15, "STARTUP_DOM_READY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_DOM_READY:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 108
    new-instance v15, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v14, "STARTUP_JS_FINISH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_JS_FINISH:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 109
    new-instance v14, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v12, "STARTUP_APP_LOADED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_APP_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 110
    new-instance v12, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v10, "STARTUP_PAGE_LOADED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 111
    new-instance v10, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v8, "STARTUP_PAGE_LOADED_CLIENT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_LOADED_CLIENT:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 112
    new-instance v8, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v6, "STARTUP_WORKER_FRAMEWORK_LOADED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_WORKER_FRAMEWORK_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 113
    new-instance v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v4, "STARTUP_PROCESS_LAUNCH_TIME"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PROCESS_LAUNCH_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 114
    new-instance v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v2, "STARTUP_FOREGROUND_START_TIME"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FOREGROUND_START_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 115
    new-instance v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v6, "STARTUP_H5_RPC_TIME"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_H5_RPC_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 116
    new-instance v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v4, "STARTUP_MAP_CREAT_TIME"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_MAP_CREAT_TIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 118
    new-instance v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v2, "PAGE_SWITCH_DOM_READY"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->PAGE_SWITCH_DOM_READY:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 120
    new-instance v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v6, "STARTUP_FIRSTPAINT_DATALEN"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FIRSTPAINT_DATALEN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 121
    new-instance v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v4, "STARTUP_FIRSTPAINT_RENDERTIME"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FIRSTPAINT_RENDERTIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 122
    new-instance v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v2, "STARTUP_FIRSTPAINT_TRANSFERTIME"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FIRSTPAINT_TRANSFERTIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    .line 99
    const/16 v2, 0x15

    new-array v2, v2, [Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->a:[Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 99
    const-class v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;
    .locals 1

    .line 99
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->a:[Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    return-object v0
.end method
