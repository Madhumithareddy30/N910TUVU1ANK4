.class final Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteShareRecentHistoryDefaultListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V
    .locals 4

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mInitialIntents:[Landroid/content/Intent;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040691

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;)V
    .locals 5

    const v4, 0x1020435

    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x1020015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;->extraInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x1080d53

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090122

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
