.class Lcom/android/incallui/BaseFragmentManager$1;
.super Landroid/os/Handler;
.source "BaseFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/BaseFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field nowMode:Ljava/lang/Enum;

.field final synthetic this$0:Lcom/android/incallui/BaseFragmentManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/BaseFragmentManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/BaseFragmentManager$1;->this$0:Lcom/android/incallui/BaseFragmentManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/BaseFragmentManager$1;->nowMode:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0x385

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/incallui/BaseFragmentManager$1;->this$0:Lcom/android/incallui/BaseFragmentManager;

    iget-object v1, v1, Lcom/android/incallui/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/BaseFragmentManager$1;->this$0:Lcom/android/incallui/BaseFragmentManager;

    iget-object v1, v1, Lcom/android/incallui/BaseFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/BaseFragmentManager$1;->nowMode:Ljava/lang/Enum;

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    iput-object v1, p0, Lcom/android/incallui/BaseFragmentManager$1;->nowMode:Ljava/lang/Enum;

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/BaseFragmentManager$1;->this$0:Lcom/android/incallui/BaseFragmentManager;

    iget-object v2, p0, Lcom/android/incallui/BaseFragmentManager$1;->nowMode:Ljava/lang/Enum;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/BaseFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iget-object v1, p0, Lcom/android/incallui/BaseFragmentManager$1;->this$0:Lcom/android/incallui/BaseFragmentManager;

    iget-object v1, v1, Lcom/android/incallui/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/incallui/BaseFragmentManager$1;->this$0:Lcom/android/incallui/BaseFragmentManager;

    iget-object v2, v2, Lcom/android/incallui/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/BaseFragmentManager$1;->nowMode:Ljava/lang/Enum;

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    iput-object v1, p0, Lcom/android/incallui/BaseFragmentManager$1;->nowMode:Ljava/lang/Enum;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/BaseFragmentManager$1;->this$0:Lcom/android/incallui/BaseFragmentManager;

    iget-object v1, v1, Lcom/android/incallui/BaseFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    iput-object v1, p0, Lcom/android/incallui/BaseFragmentManager$1;->nowMode:Ljava/lang/Enum;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
    .end packed-switch
.end method
