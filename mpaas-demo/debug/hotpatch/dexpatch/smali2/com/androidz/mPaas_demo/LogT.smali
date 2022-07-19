.class public Lcom/androidz/mPaas_demo/LogT;
.super Ljava/lang/Object;
.source "LogT.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fix()V
    .locals 3

    .line 10
    const/4 v0, 0x0

    .line 11
    .local v0, "nullObj":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    const-string v1, "xxa"

    const-string v2, "ok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void
.end method
