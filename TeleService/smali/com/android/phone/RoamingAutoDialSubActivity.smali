.class public Lcom/android/phone/RoamingAutoDialSubActivity;
.super Landroid/app/ListActivity;
.source "RoamingAutoDialSubActivity.java"


# instance fields
.field radSubName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "RAD_SUB_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "SKTRADAboutRADActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a0353

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0357

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const v2, 0x7f040097

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setContentView(I)V

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0400af

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    const-string v2, "SKTRADDialToKoreaActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0a0358

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "SKTRADDialToAbroadActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0a0359

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v2, "SKTRADTRoamingCenterActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0a0351

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0354

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v2, "SKTRADMOFATInfoActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0a0352

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0362

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0361

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string v2, "SKTRADOnOffActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0a035d

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const-string v2, "SKTRADLocalTimeInfoActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a035f

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0360

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x10000000

    packed-switch p3, :pswitch_data_0

    const-string v2, "RoamingAutoDialSubActivity"

    const-string v3, "ListItemClick position ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v2, "SKTRADTRoamingCenterActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const-string v4, "+82263439000"

    invoke-static {v3, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "RADDialOption"

    const-string v3, "abroad"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingAutoDialSubActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "RoamingAutoDialSubActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "SKTRADMOFATInfoActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const-string v4, "+82232100404"

    invoke-static {v3, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "RADDialOption"

    const-string v3, "abroad"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingAutoDialSubActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
