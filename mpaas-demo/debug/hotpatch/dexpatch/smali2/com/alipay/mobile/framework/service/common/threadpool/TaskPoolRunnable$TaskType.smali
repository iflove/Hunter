.class public final enum Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;
.super Ljava/lang/Enum;
.source "TaskPoolRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum BIZ_SPECIFIC:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum BIZ_SPECIFIC_ORDERED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum BIZ_SPECIFIC_SCHEDULED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum IO:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum MMS_DJANGO:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum MMS_HTTP:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum NORMAL:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum ORDERED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum RPC:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum SCHEDULED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum UNKNOWN:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum URGENT:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum URGENT_DISPLAY:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

.field public static final enum URGENT_HOME_PAGE:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 23
    new-instance v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->UNKNOWN:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 24
    new-instance v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v3, "URGENT_DISPLAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->URGENT_DISPLAY:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 25
    new-instance v3, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v5, "URGENT_HOME_PAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->URGENT_HOME_PAGE:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 26
    new-instance v5, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v7, "URGENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->URGENT:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 27
    new-instance v7, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v9, "NORMAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->NORMAL:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 28
    new-instance v9, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v11, "IO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->IO:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 29
    new-instance v11, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v13, "RPC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->RPC:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 30
    new-instance v13, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v15, "MMS_HTTP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->MMS_HTTP:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 31
    new-instance v15, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v14, "MMS_DJANGO"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->MMS_DJANGO:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 32
    new-instance v14, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v12, "ORDERED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->ORDERED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 33
    new-instance v12, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v10, "SCHEDULED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->SCHEDULED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 34
    new-instance v10, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v8, "BIZ_SPECIFIC"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->BIZ_SPECIFIC:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 35
    new-instance v8, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v6, "BIZ_SPECIFIC_ORDERED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->BIZ_SPECIFIC_ORDERED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 36
    new-instance v6, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v4, "BIZ_SPECIFIC_SCHEDULED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->BIZ_SPECIFIC_SCHEDULED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    .line 22
    const/16 v4, 0xe

    new-array v4, v4, [Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->$VALUES:[Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;
    .locals 1

    .line 22
    const-class v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;
    .locals 1

    .line 22
    sget-object v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->$VALUES:[Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    return-object v0
.end method
