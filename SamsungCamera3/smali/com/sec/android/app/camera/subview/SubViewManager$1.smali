.class Lcom/sec/android/app/camera/subview/SubViewManager$1;
.super Landroid/os/Handler;
.source "SubViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/subview/SubViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewManager$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const-string v0, "SubViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewManager;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->access$000(Lcom/sec/android/app/camera/subview/SubViewManager;)Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewManager;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->access$000(Lcom/sec/android/app/camera/subview/SubViewManager;)Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->showBaseMenu()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewManager;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewManager;->mLandscapeMode:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->access$100(Lcom/sec/android/app/camera/subview/SubViewManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->rotateMenu()V

    :cond_1
    return-void
.end method
