.class public interface abstract Lcom/alipay/mobile/framework/app/ui/ActivityStatusBarSupport;
.super Ljava/lang/Object;
.source "ActivityStatusBarSupport.java"


# static fields
.field public static final NOT_SUPPORT:I = 0x0

.field public static final SUPPORT_BY_COLOR:I = 0x1

.field public static final SUPPORT_BY_FULLSCREEN:I = 0x3

.field public static final SUPPORT_BY_FULLSCREEN_AND_TITLEBAR_HEIGHT:I = 0x2


# virtual methods
.method public abstract getStatusBarColor()I
.end method

.method public abstract getSupportType()I
.end method
