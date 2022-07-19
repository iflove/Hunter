.class public final enum Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;
.super Ljava/lang/Enum;
.source "TaskScheduleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScheduleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum BIZ_SPECIFIC:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum IO:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum MMS_DJANGO:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum MMS_HTTP:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum ORDERED:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum RPC:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum SYNC:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum UNKNOWN:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum URGENT:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum URGENT_DISPLAY:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

.field public static final enum URGENT_HOME_PAGE:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 86
    new-instance v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->UNKNOWN:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 87
    new-instance v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v3, "URGENT_DISPLAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT_DISPLAY:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 88
    new-instance v3, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v5, "URGENT_HOME_PAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT_HOME_PAGE:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 89
    new-instance v5, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v7, "URGENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 90
    new-instance v7, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v9, "NORMAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 91
    new-instance v9, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v11, "IO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->IO:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 92
    new-instance v11, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v13, "RPC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->RPC:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 93
    new-instance v13, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v15, "SYNC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->SYNC:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 94
    new-instance v15, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v14, "MMS_HTTP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->MMS_HTTP:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 95
    new-instance v14, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v12, "MMS_DJANGO"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->MMS_DJANGO:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 96
    new-instance v12, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v10, "ORDERED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->ORDERED:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 97
    new-instance v10, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    const-string v8, "BIZ_SPECIFIC"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->BIZ_SPECIFIC:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 85
    const/16 v8, 0xc

    new-array v8, v8, [Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->$VALUES:[Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;
    .locals 1

    .line 85
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;
    .locals 1

    .line 85
    sget-object v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->$VALUES:[Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    return-object v0
.end method
