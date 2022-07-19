.class public final Lcom/mpaas/demo/rpc/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/rpc/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final rpc_exception_btn:I

.field public static final rpc_exception_text:I

.field public static final rpc_exception_toast:I

.field public static final rpc_get_btn:I

.field public static final rpc_interceptor:I

.field public static final rpc_post_btn:I

.field public static final rpc_self_encrypt:I

.field public static final rpc_title:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-string v0, "string"

    const-string v1, "rpc_exception_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/rpc/R$string;->rpc_exception_btn:I

    .line 22
    const-string v1, "rpc_exception_text"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/rpc/R$string;->rpc_exception_text:I

    .line 23
    const-string v1, "rpc_exception_toast"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/rpc/R$string;->rpc_exception_toast:I

    .line 24
    const-string v1, "rpc_get_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/rpc/R$string;->rpc_get_btn:I

    .line 25
    const-string v1, "rpc_interceptor"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/rpc/R$string;->rpc_interceptor:I

    .line 26
    const-string v1, "rpc_post_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/rpc/R$string;->rpc_post_btn:I

    .line 27
    const-string v1, "rpc_self_encrypt"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/rpc/R$string;->rpc_self_encrypt:I

    .line 28
    const-string v1, "rpc_title"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/rpc/R$string;->rpc_title:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
