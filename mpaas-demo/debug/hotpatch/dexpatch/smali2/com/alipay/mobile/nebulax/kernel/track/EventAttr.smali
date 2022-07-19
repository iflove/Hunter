.class public final enum Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;
.super Ljava/lang/Enum;
.source "EventAttr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_abnormalCode:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_abnormalMsg:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_app_create_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_app_crt_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_br_ready_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_bridge_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_core_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_fst_elem_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_fst_scr_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_jsfm_init_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_jsnode_crt_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_lib_c_plus_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_lib_init_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_lib_native_bitmap_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_lib_native_bridge_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_lib_native_core_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_lib_native_platform_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_page_create_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_platform_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_ck_sdk_init_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_cubeExceptionMsg:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_engineHasInited:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_fatalReason:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_fatalType:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_loadTime:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_message:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_resourceAppId:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_resourceAppType:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_resourceDBFailMsg:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_resourceParseFailCode:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_resourceParseFailMsg:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_resourceSyncCount:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum Key_resourceVersion:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

.field public static final enum key_launchWithProcessNotReady:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 4
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v1, "Key_abnormalCode"

    const/4 v2, 0x0

    const-string v3, "abnormalCode"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_abnormalCode:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 5
    new-instance v1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v3, "Key_abnormalMsg"

    const/4 v4, 0x1

    const-string v5, "abnormalMsg"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_abnormalMsg:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 7
    new-instance v3, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v5, "Key_cubeExceptionMsg"

    const/4 v6, 0x2

    const-string v7, "cubeExceptionMsg"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_cubeExceptionMsg:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 8
    new-instance v5, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v7, "key_launchWithProcessNotReady"

    const/4 v8, 0x3

    const-string v9, "processNotReady"

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->key_launchWithProcessNotReady:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 10
    new-instance v7, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v9, "Key_resourceSyncCount"

    const/4 v10, 0x4

    const-string v11, "resSyncCount"

    invoke-direct {v7, v9, v10, v11}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_resourceSyncCount:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 11
    new-instance v9, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v11, "Key_resourceVersion"

    const/4 v12, 0x5

    const-string v13, "resVersion"

    invoke-direct {v9, v11, v12, v13}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_resourceVersion:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 12
    new-instance v11, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v13, "Key_resourceAppId"

    const/4 v14, 0x6

    const-string v15, "resAppId"

    invoke-direct {v11, v13, v14, v15}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_resourceAppId:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 13
    new-instance v13, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_resourceAppType"

    const/4 v14, 0x7

    const-string v12, "appType"

    invoke-direct {v13, v15, v14, v12}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_resourceAppType:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 14
    new-instance v12, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_resourceDBFailMsg"

    const/16 v14, 0x8

    const-string v10, "resDBFailMsg"

    invoke-direct {v12, v15, v14, v10}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_resourceDBFailMsg:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 15
    new-instance v10, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_resourceParseFailCode"

    const/16 v14, 0x9

    const-string v8, "resParseFailCode"

    invoke-direct {v10, v15, v14, v8}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_resourceParseFailCode:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 16
    new-instance v8, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_resourceParseFailMsg"

    const/16 v14, 0xa

    const-string v6, "resParseFailMsg"

    invoke-direct {v8, v15, v14, v6}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_resourceParseFailMsg:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 18
    new-instance v6, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_loadTime"

    const/16 v14, 0xb

    const-string v4, "perfEventLoadTime"

    invoke-direct {v6, v15, v14, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_loadTime:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 20
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_engineHasInited"

    const/16 v14, 0xc

    const-string v2, "engineHasInited"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_engineHasInited:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 22
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_fatalReason"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "fatalReason"

    invoke-direct {v2, v15, v14, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_fatalReason:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 23
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_fatalType"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "fatalType"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_fatalType:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 26
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_ck_sdk_init_cost"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "ck_sdk_init_cost"

    invoke-direct {v2, v15, v14, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_sdk_init_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 28
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_ck_jsfm_init_cost"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "ck_jsfm_init_cost"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_jsfm_init_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 30
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_ck_app_crt_cost"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "ck_app_crt_cost"

    invoke-direct {v2, v15, v14, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_app_crt_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 32
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_ck_jsnode_crt_cost"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "ck_jsnode_crt_cost"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_jsnode_crt_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 34
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_ck_fst_scr_cost"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "ck_fst_scr_cost"

    invoke-direct {v2, v15, v14, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_fst_scr_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 36
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_ck_fst_elem_cost"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "ck_fst_elem_cost"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_fst_elem_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 38
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_ck_br_ready_cost"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "ck_br_ready_cost"

    invoke-direct {v2, v15, v14, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_br_ready_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 40
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v15, "Key_ck_lib_init_cost"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "ck_lib_init_cost"

    invoke-direct {v4, v15, v14, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_init_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 43
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_ck_lib_c_plus_cost"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "ck_lib_c_plus_cost"

    invoke-direct {v2, v14, v15, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_c_plus_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 45
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_ck_lib_native_bitmap_cost"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string v2, "ck_lib_native_bitmap_cost"

    invoke-direct {v4, v14, v15, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_native_bitmap_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 47
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_ck_lib_native_core_cost"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "ck_lib_native_core_cost"

    invoke-direct {v2, v14, v15, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_native_core_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 49
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_ck_lib_native_bridge_cost"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const-string v2, "ck_lib_native_bridge_cost"

    invoke-direct {v4, v14, v15, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_native_bridge_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 51
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_ck_lib_native_platform_cost"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const-string v4, "ck_lib_native_platform_cost"

    invoke-direct {v2, v14, v15, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_native_platform_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 53
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_ck_core_block_cost"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const-string v2, "ck_core_block_cost"

    invoke-direct {v4, v14, v15, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_core_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 55
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_ck_platform_block_cost"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const-string v4, "ck_platform_block_cost"

    invoke-direct {v2, v14, v15, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_platform_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 57
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_ck_bridge_block_cost"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const-string v2, "ck_bridge_block_cost"

    invoke-direct {v4, v14, v15, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_bridge_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 59
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_ck_app_create_block_cost"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const-string v4, "ck_app_create_block_cost"

    invoke-direct {v2, v14, v15, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_app_create_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 61
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_ck_page_create_block_cost"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const-string v2, "ck_page_create_block_cost"

    invoke-direct {v4, v14, v15, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_page_create_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 63
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const-string v14, "Key_message"

    const/16 v15, 0x21

    move-object/from16 v36, v4

    const-string v4, "ck_event_msg"

    invoke-direct {v2, v14, v15, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_message:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 3
    const/16 v4, 0x22

    new-array v4, v4, [Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    const/4 v14, 0x0

    aput-object v0, v4, v14

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

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v35, v4, v0

    const/16 v0, 0x20

    aput-object v36, v4, v0

    const/16 v0, 0x21

    aput-object v2, v4, v0

    sput-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->$VALUES:[Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->key:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;
    .locals 1

    .line 3
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;
    .locals 1

    .line 3
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->$VALUES:[Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->key:Ljava/lang/String;

    return-object v0
.end method
