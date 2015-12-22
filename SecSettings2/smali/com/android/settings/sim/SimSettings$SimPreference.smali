.class Lcom/android/settings/sim/SimSettings$SimPreference;
.super Landroid/preference/Preference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private mColorStrings:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mTintArr:[I

.field private mTintSelectorPos:I

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iput p4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mColorStrings:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings$SimPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/sim/SimSettings$SimPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/sim/SimSettings$SimPreference;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    return-object v0
.end method


# virtual methods
.method public createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V
    .locals 14

    iget-object v10, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v10}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v10}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v10}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f04011f

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f10028e

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f10028f

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    new-instance v0, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0401bc

    iget-object v12, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mColorStrings:[Ljava/lang/String;

    invoke-direct {v0, p0, v10, v11, v12}, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/content/Context;I[Ljava/lang/String;)V

    const v10, 0x1090009

    invoke-virtual {v0, v10}, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v4, 0x0

    :goto_0
    iget-object v10, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    array-length v10, v10

    if-ge v4, v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    aget v10, v10, v4

    iget-object v11, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v11

    if-ne v10, v11, :cond_1

    invoke-virtual {v9, v4}, Landroid/widget/Spinner;->setSelection(I)V

    iput v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    :cond_0
    new-instance v10, Lcom/android/settings/sim/SimSettings$SimPreference$1;

    invoke-direct {v10, p0, v9}, Lcom/android/settings/sim/SimSettings$SimPreference$1;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/widget/Spinner;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v10, 0x7f100290

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v11, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/sim/SimSettings;->access$000(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const v10, 0x104000e

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v10, 0x7f10016c

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a0d8b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0a0169

    new-instance v11, Lcom/android/settings/sim/SimSettings$SimPreference$2;

    invoke-direct {v11, p0, v3, v9}, Lcom/android/settings/sim/SimSettings$SimPreference$2;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/view/View;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0a0166

    new-instance v11, Lcom/android/settings/sim/SimSettings$SimPreference$3;

    invoke-direct {v11, p0}, Lcom/android/settings/sim/SimSettings$SimPreference$3;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public update()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0d8b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/sim/SimSettings;->access$000(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/sim/SimSettings;->access$000(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0a0d88

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_1
.end method
