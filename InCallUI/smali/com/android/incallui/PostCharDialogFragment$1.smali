.class Lcom/android/incallui/PostCharDialogFragment$1;
.super Ljava/lang/Object;
.source "PostCharDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/PostCharDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/PostCharDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/PostCharDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/PostCharDialogFragment$1;->this$0:Lcom/android/incallui/PostCharDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment$1;->this$0:Lcom/android/incallui/PostCharDialogFragment;

    # getter for: Lcom/android/incallui/PostCharDialogFragment;->mCallId:I
    invoke-static {v1}, Lcom/android/incallui/PostCharDialogFragment;->access$000(Lcom/android/incallui/PostCharDialogFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->postDialWaitContinue(I)V

    return-void
.end method
