.class public final Lcom/mpaas/nebula/adapter/api/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/nebula/adapter/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final h5_keyboard:I

.field public static final mpaas_default_title_bar:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    const-string v0, "layout"

    const-string v1, "com_mpaas_nebula_adapter_h5_keyboard"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/nebula/adapter/api/R$layout;->h5_keyboard:I

    .line 76
    const-string v1, "mpaas_default_title_bar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/nebula/adapter/api/R$layout;->mpaas_default_title_bar:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
