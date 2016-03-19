.class Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CustomListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomListPreferenceAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CustomListPreference;


# direct methods
.method public constructor <init>(Lcom/android/phone/CustomListPreference;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    iget-object v0, v0, Lcom/android/phone/CustomListPreference;->entries:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    move-object v1, p2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    # getter for: Lcom/android/phone/CustomListPreference;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/phone/CustomListPreference;->access$000(Lcom/android/phone/CustomListPreference;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;-><init>(Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;Landroid/view/View;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method
