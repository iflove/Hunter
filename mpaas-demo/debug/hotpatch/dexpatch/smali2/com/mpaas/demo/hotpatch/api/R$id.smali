.class public final Lcom/mpaas/demo/hotpatch/api/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/hotpatch/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final hotpatch_need_hotpatch_btn:I

.field public static final hotpatch_trigger_hotpatch_btn:I

.field public static final title_atb:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string v0, "id"

    const-string v1, "hotpatch_need_hotpatch_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/hotpatch/api/R$id;->hotpatch_need_hotpatch_btn:I

    .line 12
    const-string v1, "hotpatch_trigger_hotpatch_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/hotpatch/api/R$id;->hotpatch_trigger_hotpatch_btn:I

    .line 13
    const-string v1, "title_atb"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/hotpatch/api/R$id;->title_atb:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
