.class public Lcom/alipay/mobile/common/transport/utils/HeaderConstant;
.super Ljava/lang/Object;
.source "HeaderConstant.java"


# static fields
.field public static final HEADER_KEY_ALERT:Ljava/lang/String; = "alert"

.field public static final HEADER_KEY_APPID:Ljava/lang/String; = "AppId"

.field public static final HEADER_KEY_APP_KEY:Ljava/lang/String; = "App-Key"

.field public static final HEADER_KEY_CHARSET:Ljava/lang/Object;

.field public static final HEADER_KEY_CLIENT_ID:Ljava/lang/String; = "ClientId"

.field public static final HEADER_KEY_CLIENT_TRACE_ID:Ljava/lang/String; = "client_trace_id"

.field public static final HEADER_KEY_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_KEY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_KEY_CONTROL:Ljava/lang/String; = "Control"

.field public static final HEADER_KEY_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEADER_KEY_DID:Ljava/lang/String; = "Did"

.field public static final HEADER_KEY_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_KEY_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_KEY_ISBGRPC:Ljava/lang/String; = "isBgRpc"

.field public static final HEADER_KEY_MEMO:Ljava/lang/String; = "Memo"

.field public static final HEADER_KEY_MMTC_TS:Ljava/lang/String; = "x-mmtc-timestamp"

.field public static final HEADER_KEY_OPERATION_TYPE:Ljava/lang/String; = "Operation-Type"

.field public static final HEADER_KEY_PARAM_LASTCLICKSPM:Ljava/lang/String; = "lastClickSpm"

.field public static final HEADER_KEY_PARAM_REQ_SIZE:Ljava/lang/String; = "PARAM_REQ_SIZE"

.field public static final HEADER_KEY_PARAM_RES_SIZE:Ljava/lang/String; = "PARAM_RES_SIZE"

.field public static final HEADER_KEY_PARAM_RETRY:Ljava/lang/String; = "PARAM_RETRY"

.field public static final HEADER_KEY_PARAM_SHORTLINK_IPLIST:Ljava/lang/String; = "SHORT_IPLIST"

.field public static final HEADER_KEY_PARAM_SHORTLINK_ONLY:Ljava/lang/String; = "SHORTONLY"

.field public static final HEADER_KEY_PARAM_SRCSPM:Ljava/lang/String; = "srcSpm"

.field public static final HEADER_KEY_PARAM_SUPPORTSHORTLINK:Ljava/lang/String; = "SUPPORTSHORTLINK"

.field public static final HEADER_KEY_PARAM_TRACEID:Ljava/lang/String; = "TRACEID"

.field public static final HEADER_KEY_PARAM_TRAFFIC:Ljava/lang/String; = "PARAM_TRAFFIC"

.field public static final HEADER_KEY_PARAM_USE_MULTIPLEXLINK:Ljava/lang/String; = "USE_MULIPLEX_LINK"

.field public static final HEADER_KEY_PARAM_WUA:Ljava/lang/String; = "miniwua"

.field public static final HEADER_KEY_REQ_DATA:Ljava/lang/String; = "Request-Data"

.field public static final HEADER_KEY_RESULT_STATUS:Ljava/lang/String; = "Result-Status"

.field public static final HEADER_KEY_RETRYABLE:Ljava/lang/String; = "Retryable"

.field public static final HEADER_KEY_RETRYABLE_2:Ljava/lang/String; = "Retryable2"

.field public static final HEADER_KEY_RPCID:Ljava/lang/String; = "RpcId"

.field public static final HEADER_KEY_SENCE:Ljava/lang/String; = "Scene"

.field public static final HEADER_KEY_SERVER_TIME:Ljava/lang/String; = "Server-Time"

.field public static final HEADER_KEY_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final HEADER_KEY_SIGN:Ljava/lang/String; = "Sign"

.field public static final HEADER_KEY_SIGN_TYPE:Ljava/lang/String; = "signType"

.field public static final HEADER_KEY_SPDY_H5_UUID:Ljava/lang/String; = "spdy-h5-uuid"

.field public static final HEADER_KEY_SPDY_PROXY_URL:Ljava/lang/String; = "spdy-proxy-url"

.field public static final HEADER_KEY_SPEAK_END_TIME:Ljava/lang/String; = "SpeakEndTime"

.field public static final HEADER_KEY_TIPS:Ljava/lang/String; = "Tips"

.field public static final HEADER_KEY_TRACKERID:Ljava/lang/String; = "TrackerId"

.field public static final HEADER_KEY_TS:Ljava/lang/String; = "Ts"

.field public static final HEADER_KEY_UUID:Ljava/lang/String; = "Uuid"

.field public static final HEADER_KEY_VERSION:Ljava/lang/String; = "Version"

.field public static final HEADER_KEY_WORKSPACE_ID:Ljava/lang/String; = "workspaceid"

.field public static final HEADER_KEY_X_MMTC_SIGN:Ljava/lang/String; = "x-mmtc-sign"

.field public static final HEADER_KEY_X_RPC_REQ_TICK:Ljava/lang/String; = "X-RPC-REQ-TICK"

.field public static final HEADER_KEY_X_RPC_RES_TICK:Ljava/lang/String; = "X-RPC-RESP-TICK"

.field public static final HEADER_VALUE_JSON_TYPE:Ljava/lang/String; = "application/json"

.field public static final HEADER_VALUE_OLD_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final HEADER_VALUE_PB_TYPE:Ljava/lang/String; = "application/protobuf"

.field public static final HEADER_VALUE_RESULT_STATUS_OK:Ljava/lang/String; = "1000"

.field public static final HEADER_VALUE_RPC_VERSION_1_0:Ljava/lang/String; = "1"

.field public static final HEADER_VALUE_RPC_VERSION_2:Ljava/lang/String; = "2"

.field public static final HEADER_X_SPDY_PROXY:Ljava/lang/String; = "x-spdy-proxy"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "Charset"

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/HeaderConstant;->HEADER_KEY_CHARSET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
