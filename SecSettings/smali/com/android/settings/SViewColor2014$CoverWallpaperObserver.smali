.class Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;
.super Landroid/database/ContentObserver;
.source "SViewColor2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverWallpaperObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor2014;


# direct methods
.method public constructor <init>(Lcom/android/settings/SViewColor2014;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mIsChangedInside:Z
    invoke-static {v0}, Lcom/android/settings/SViewColor2014;->access$700(Lcom/android/settings/SViewColor2014;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    # setter for: Lcom/android/settings/SViewColor2014;->mIsChangedInside:Z
    invoke-static {v0, v3}, Lcom/android/settings/SViewColor2014;->access$702(Lcom/android/settings/SViewColor2014;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v0, v1}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$300(Lcom/android/settings/SViewColor2014;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SViewColor2014;->ConvertDBIdtoResId(I)I

    move-result v1

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v0, v1}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    # invokes: Lcom/android/settings/SViewColor2014;->setfocusButton(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v0}, Lcom/android/settings/SViewColor2014;->access$300(Lcom/android/settings/SViewColor2014;)I

    move-result v0

    sget v1, Lcom/android/settings/SViewColor2014;->WALLPAPER_PREPARED_DB_ID:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/settings/SViewColor2014;->access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    # invokes: Lcom/android/settings/SViewColor2014;->getCustomWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/settings/SViewColor2014;->access$1000(Lcom/android/settings/SViewColor2014;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v0, v0, Lcom/android/settings/SViewColor2014;->mCutsomButtonBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    # invokes: Lcom/android/settings/SViewColor2014;->getCustomWallpaperBitmapForThumb()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/settings/SViewColor2014;->access$1200(Lcom/android/settings/SViewColor2014;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/settings/SViewColor2014;->access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v1}, Lcom/android/settings/SViewColor2014;->access$800(Lcom/android/settings/SViewColor2014;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
