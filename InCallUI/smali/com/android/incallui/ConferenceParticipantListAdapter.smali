.class public Lcom/android/incallui/ConferenceParticipantListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConferenceParticipantListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;,
        Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    }
.end annotation


# instance fields
.field private mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private mDisconnectListener:Landroid/view/View$OnClickListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mListView:Landroid/widget/ListView;

.field private mParentCanSeparate:Z

.field private final mParticipantsByCallId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSeparateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$1;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDisconnectListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$2;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mSeparateListener:Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method private refreshView(Ljava/lang/String;)V
    .locals 7

    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    sub-int v5, v1, v0

    if-gt v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int v5, v2, v0

    iget-object v6, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private final setCallerInfoForRow(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 12

    const v1, 0x7f100045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v1, 0x7f100046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v1, 0x7f100047

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v1, 0x7f100048

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v1, 0x7f100049

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v1, 0x7f100044

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz p8, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p8, :cond_1

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDisconnectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    if-eqz p7, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p7, :cond_3

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mSeparateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    if-eqz p6, :cond_4

    const/4 v6, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-direct {v6, p2, v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private sortParticipantList()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    new-instance v1, Lcom/android/incallui/ConferenceParticipantListAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$3;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateParticipantInfo(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;)V"
        }
    .end annotation

    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    const/4 v10, 0x0

    new-instance v9, Ljava/util/HashSet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v13, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/4 v14, 0x4

    if-ne v12, v14, :cond_1

    const/4 v12, 0x1

    :goto_1
    invoke-static {v13, v1, v12}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    :cond_0
    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-virtual {v11, v1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCall(Lcom/android/incallui/Call;)V

    invoke-virtual {v11, v3}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    new-instance v11, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-direct {v11, p0, v1, v3}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->sortParticipantList()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

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
    .locals 14

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000a

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v11

    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v12

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v10

    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->isCacheLookupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    new-instance v4, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;

    invoke-direct {v4, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    invoke-virtual {v10, v3, v1, v4}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParentCanSeparate:Z

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    const/16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v11}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    const/16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v9

    iget-object v3, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v4, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v5, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    iget-object v7, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/incallui/ConferenceParticipantListAdapter;->setCallerInfoForRow(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZ)V

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    move-object/from16 v2, p2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public refreshCall(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-virtual {v1, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCall(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateContactInfo(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-virtual {v0, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCacheLookupComplete(Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateParticipants(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;Z)V"
        }
    .end annotation

    iput-boolean p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParentCanSeparate:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateParticipantInfo(Ljava/util/List;)V

    return-void
.end method
