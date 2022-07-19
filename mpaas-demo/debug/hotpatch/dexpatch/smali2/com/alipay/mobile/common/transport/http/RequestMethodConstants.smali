.class public Lcom/alipay/mobile/common/transport/http/RequestMethodConstants;
.super Ljava/lang/Object;
.source "RequestMethodConstants.java"


# static fields
.field public static final DELETE_METHOD:Ljava/lang/String; = "DELETE"

.field public static final GET_METHOD:Ljava/lang/String; = "GET"

.field public static final HEAD_METHOD:Ljava/lang/String; = "HEAD"

.field public static final METHODS:[Ljava/lang/String;

.field public static final OPTIONS_METHOD:Ljava/lang/String; = "OPTIONS"

.field public static final POST_METHOD:Ljava/lang/String; = "POST"

.field public static final PUT_METHOD:Ljava/lang/String; = "PUT"

.field public static final TRACE_METHOD:Ljava/lang/String; = "TRACE"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    const-string v0, "POST"

    const-string v1, "GET"

    const-string v2, "HEAD"

    const-string v3, "DELETE"

    const-string v4, "OPTIONS"

    const-string v5, "PUT"

    const-string v6, "TRACE"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/RequestMethodConstants;->METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
