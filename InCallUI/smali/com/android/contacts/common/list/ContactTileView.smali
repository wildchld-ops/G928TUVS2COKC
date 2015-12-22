.class public abstract Lcom/android/contacts/common/list/ContactTileView;
.super Landroid/widget/FrameLayout;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHorizontalDivider:Landroid/view/View;

.field protected mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mPushState:Landroid/view/View;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method


# virtual methods
.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/contacts/common/list/ContactTileView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactTileView$1;-><init>(Lcom/android/contacts/common/list/ContactTileView;)V

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v1, 0x7f100062

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mName:Landroid/widget/TextView;

    const v1, 0x7f100064

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    const v1, 0x7f100061

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f10006a

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    const v1, 0x7f100066

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    const v1, 0x7f100065

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    const v1, 0x7f100068

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    const v1, 0x7f100067

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->createClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
