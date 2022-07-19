.class public final Lcom/mpaas/demo/hotpatch/api/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/hotpatch/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final hotpatch:I

.field public static final mock_need_hotpatch:I

.field public static final mock_need_hotpatch_tip:I

.field public static final notice:I

.field public static final trigger_hotpatch_dynamic_release:I

.field public static final trigger_hotpatch_dynamic_release_tip:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-string v0, "string"

    const-string v1, "hotpatch"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/hotpatch/api/R$string;->hotpatch:I

    .line 20
    const-string v1, "mock_need_hotpatch"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/hotpatch/api/R$string;->mock_need_hotpatch:I

    .line 21
    const-string v1, "mock_need_hotpatch_tip"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/hotpatch/api/R$string;->mock_need_hotpatch_tip:I

    .line 22
    const-string v1, "notice"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/hotpatch/api/R$string;->notice:I

    .line 23
    const-string v1, "trigger_hotpatch_dynamic_release"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/hotpatch/api/R$string;->trigger_hotpatch_dynamic_release:I

    .line 24
    const-string v1, "trigger_hotpatch_dynamic_release_tip"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/hotpatch/api/R$string;->trigger_hotpatch_dynamic_release_tip:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
