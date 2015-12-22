.class public Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "ContactTilePhoneFrequentView.java"


# instance fields
.field private mPhoneNumberString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mPhoneNumberString:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;-><init>(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)V

    return-object v0
.end method
