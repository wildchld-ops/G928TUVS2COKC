.class public Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/WifiCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiCallAdapter"
.end annotation


# instance fields
.field private CallType:[Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private inflater:Landroid/view/LayoutInflater;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/callsettings/WifiCallActivity;

.field private wifiCallList:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/WifiCallActivity;Landroid/app/Activity;Ljava/util/TreeMap;)V
    .locals 2
    .param p2    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->wifiCallList:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->wifiCallList:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/TreeMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->CallType:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->CallType:[Ljava/lang/String;

    return-object v0
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WifiCallActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawNormalScreen position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/WifiCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0400c1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/WifiCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_call_preferred"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "WifiCallActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wfcPreferred = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const v3, 0x7f1001f9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mTextView:Landroid/widget/TextView;

    const v3, 0x7f1001f5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f1001f7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->CallType:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    new-instance v4, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$1;-><init>(Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;-><init>(Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p2

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->wifiCallList:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->wifiCallList:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->CallType:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v1, 0x0

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    const-string v2, "WifiCallActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
