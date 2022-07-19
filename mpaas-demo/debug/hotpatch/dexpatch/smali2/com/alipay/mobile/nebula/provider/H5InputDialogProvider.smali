.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
.super Ljava/lang/Object;
.source "H5InputDialogProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider$OnClickPositiveListener;,
        Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider$OnClickNegativeListener;
    }
.end annotation


# virtual methods
.method public abstract createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end method

.method public abstract getInputContent()Landroid/widget/EditText;
.end method

.method public abstract setNegativeListener(Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider$OnClickNegativeListener;)V
.end method

.method public abstract setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider$OnClickPositiveListener;)V
.end method
