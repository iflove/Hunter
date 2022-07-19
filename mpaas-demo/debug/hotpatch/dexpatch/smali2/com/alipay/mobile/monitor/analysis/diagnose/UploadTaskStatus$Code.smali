.class public final enum Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
.super Ljava/lang/Enum;
.source "UploadTaskStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum FILE_UPLOADING:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum FILE_UPLOADING_RETRY:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum FILE_ZIPPING:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum NETWORK_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum NET_NOT_MATCH:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum NONE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum NO_SDCARD:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum NO_SPACE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum NO_TARGET_FILE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum PARAM_INVALID:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum RESULT_FAILURE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum RESULT_SUCCESS:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum TASK_BY_CONFIG:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum TASK_BY_POSITIVE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum TASK_BY_PUSH:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum TRAFIC_LIMIT:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum UNKNOWN_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field public static final enum ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 34
    new-instance v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NONE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 35
    new-instance v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v3, "ZIPPING_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 36
    new-instance v3, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v5, "TRAFIC_LIMIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TRAFIC_LIMIT:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 37
    new-instance v5, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v7, "NO_SPACE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_SPACE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 38
    new-instance v7, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v9, "NO_TARGET_FILE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_TARGET_FILE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 39
    new-instance v9, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v11, "NET_NOT_MATCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NET_NOT_MATCH:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 40
    new-instance v11, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v13, "NO_SDCARD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_SDCARD:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 41
    new-instance v13, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v15, "PARAM_INVALID"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->PARAM_INVALID:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 42
    new-instance v15, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v14, "NETWORK_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NETWORK_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 43
    new-instance v14, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v12, "UNKNOWN_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->UNKNOWN_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 44
    new-instance v12, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v10, "RESULT_SUCCESS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->RESULT_SUCCESS:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 45
    new-instance v10, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v8, "RESULT_FAILURE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->RESULT_FAILURE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 46
    new-instance v8, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v6, "TASK_BY_PUSH"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_PUSH:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 47
    new-instance v6, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v4, "TASK_BY_CONFIG"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_CONFIG:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 48
    new-instance v4, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v2, "TASK_BY_POSITIVE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_POSITIVE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 49
    new-instance v2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v6, "TASK_BY_MANUAL"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 50
    new-instance v6, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v4, "FILE_UPLOADING"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->FILE_UPLOADING:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 51
    new-instance v4, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v2, "FILE_UPLOADING_RETRY"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->FILE_UPLOADING_RETRY:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 52
    new-instance v2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v6, "FILE_ZIPPING"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->FILE_ZIPPING:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 33
    const/16 v6, 0x13

    new-array v6, v6, [Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->$VALUES:[Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .locals 1

    .line 33
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->$VALUES:[Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v0}, [Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    return-object v0
.end method
