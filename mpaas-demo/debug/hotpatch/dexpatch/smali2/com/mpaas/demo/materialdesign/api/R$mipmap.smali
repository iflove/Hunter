.class public final Lcom/mpaas/demo/materialdesign/api/R$mipmap;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/materialdesign/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "mipmap"
.end annotation


# static fields
.field public static final mmd_ic_launcher:I

.field public static final mmd_ic_launcher_foreground:I

.field public static final mmd_ic_launcher_round:I

.field public static final mmd_ic_shortcut_about:I

.field public static final mmd_ic_shortcut_recycler:I

.field public static final mmd_ic_shortcut_scrolling:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 299
    const-string v0, "mipmap"

    const-string v1, "mmd_ic_launcher"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$mipmap;->mmd_ic_launcher:I

    .line 300
    const-string v1, "mmd_ic_launcher_foreground"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$mipmap;->mmd_ic_launcher_foreground:I

    .line 301
    const-string v1, "mmd_ic_launcher_round"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$mipmap;->mmd_ic_launcher_round:I

    .line 302
    const-string v1, "mmd_ic_shortcut_about"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$mipmap;->mmd_ic_shortcut_about:I

    .line 303
    const-string v1, "mmd_ic_shortcut_recycler"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$mipmap;->mmd_ic_shortcut_recycler:I

    .line 304
    const-string v1, "mmd_ic_shortcut_scrolling"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/materialdesign/api/R$mipmap;->mmd_ic_shortcut_scrolling:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
