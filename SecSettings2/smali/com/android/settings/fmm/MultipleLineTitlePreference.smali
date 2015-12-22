.class public Lcom/android/settings/fmm/MultipleLineTitlePreference;
.super Landroid/preference/Preference;
.source "MultipleLineTitlePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object p1, Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sput-object p1, Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-static {}, Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fmm/MultipleLineTitlePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0088

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-void
.end method
