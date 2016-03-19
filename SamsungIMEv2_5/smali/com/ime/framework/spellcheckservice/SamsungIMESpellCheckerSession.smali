.class public final Lcom/ime/framework/spellcheckservice/SamsungIMESpellCheckerSession;
.super Landroid/service/textservice/SpellCheckerService$Session;
.source "SamsungIMESpellCheckerSession.java"


# direct methods
.method public constructor <init>(Lcom/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService$Session;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
    .locals 4

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    invoke-direct {v0, p2, v1}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method
