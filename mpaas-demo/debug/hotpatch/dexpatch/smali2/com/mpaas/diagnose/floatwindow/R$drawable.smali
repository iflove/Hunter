.class public final Lcom/mpaas/diagnose/floatwindow/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/diagnose/floatwindow/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static final icon:I

.field public static final icon_devhelper_diagnose:I

.field public static final icon_float_view_close:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-string v0, "drawable"

    const-string v1, "icon"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/diagnose/floatwindow/R$drawable;->icon:I

    .line 18
    const-string v1, "icon_devhelper_diagnose"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/diagnose/floatwindow/R$drawable;->icon_devhelper_diagnose:I

    .line 19
    const-string v1, "icon_float_view_close"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/diagnose/floatwindow/R$drawable;->icon_float_view_close:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
