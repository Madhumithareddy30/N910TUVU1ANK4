.class final Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;
.super Landroid/widget/Filter;
.source "BaseEmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/contacts/BaseEmailAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirectoryPartitionFilter"
.end annotation


# instance fields
.field private final mDirectoryId:J

.field private mLimit:I

.field private final mPartitionIndex:I

.field final synthetic this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;


# direct methods
.method public constructor <init>(Lcom/android/common/contacts/BaseEmailAddressAdapter;IJ)V
    .locals 0
    .param p2    # I
    .param p3    # J

    iput-object p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput p2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->mPartitionIndex:I

    iput-wide p3, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->mDirectoryId:J

    return-void
.end method


# virtual methods
.method public declared-synchronized getLimit()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8
    .param p1    # Ljava/lang/CharSequence;

    const/4 v3, 0x0

    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    iget-wide v4, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->mDirectoryId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->getLimit()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :cond_0
    return-object v7
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Landroid/widget/Filter$FilterResults;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    iget v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->mPartitionIndex:I

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->onPartitionLoadFinished(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    return-void
.end method

.method public declared-synchronized setLimit(I)V
    .locals 1
    .param p1    # I

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method