.class public interface abstract Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;
.super Ljava/lang/Object;
.source "SchemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/service/common/SchemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SchemeHandler"
.end annotation


# virtual methods
.method public abstract canHandle(Ljava/lang/String;)Z
.end method

.method public abstract getPriority()I
.end method

.method public abstract handle(Landroid/net/Uri;)Z
.end method
