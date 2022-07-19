.class public final Lcom/mpaas/demo/artvc/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/artvc/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final ARTVC_Theme_Light:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 284
    const-string v0, "style"

    const-string v1, "ARTVC_Theme_Light"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/artvc/R$style;->ARTVC_Theme_Light:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
