.class final Lcom/android/launcher2/NewFolderDrawable$1;
.super Landroid/util/Property;
.source "NewFolderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/NewFolderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/launcher2/NewFolderDrawable;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher2/NewFolderDrawable;)Ljava/lang/Float;
    .locals 1
    .param p1    # Lcom/android/launcher2/NewFolderDrawable;

    invoke-virtual {p1}, Lcom/android/launcher2/NewFolderDrawable;->getOpenFactor()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher2/NewFolderDrawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/NewFolderDrawable$1;->get(Lcom/android/launcher2/NewFolderDrawable;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/launcher2/NewFolderDrawable;Ljava/lang/Float;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/NewFolderDrawable;
    .param p2    # Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/NewFolderDrawable;->setOpenFactor(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher2/NewFolderDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/NewFolderDrawable$1;->set(Lcom/android/launcher2/NewFolderDrawable;Ljava/lang/Float;)V

    return-void
.end method