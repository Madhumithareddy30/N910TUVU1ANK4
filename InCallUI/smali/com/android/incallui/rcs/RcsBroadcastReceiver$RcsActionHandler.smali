.class public interface abstract Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;
.super Ljava/lang/Object;
.source "RcsBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/rcs/RcsBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsActionHandler"
.end annotation


# virtual methods
.method public abstract handleCshInfo(Landroid/content/Intent;)V
.end method

.method public abstract handleError(I)V
.end method

.method public abstract handleIncommingIMandFT(Landroid/content/Intent;)V
.end method

.method public abstract handleInvitation(ZLandroid/content/Intent;)V
.end method

.method public abstract handleRcsAction(Ljava/lang/String;)V
.end method
