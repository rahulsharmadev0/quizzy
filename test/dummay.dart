const quizTestJson = {
  "id": 60,
  "title": "Genetics and Evolution",
  "description": "",
  "topic": "The Molecular Basis of Inheritance",
  "time": "2024-07-15T00:00:00.000+05:30",
  "created_at": "2024-07-15T17:42:08.623+05:30",
  "updated_at": "2024-09-23T18:43:29.210+05:30",
  "duration": 15,
  "negative_marks": 1,
  "correct_answer_marks": 4,
  "shuffle": true,
  "show_answers": true,
  "lock_solutions": false,
  "show_unanswered": false,
  "ends_at": "2025-01-21T00:00:00+00:00",
  "questions_count": 10,
  "max_mistake_count": 9,
  "questions": [
    {
      "id": 3342,
      "description": "If the base sequence in DNA is 5' AAAT 3' then the base sequence in mRNA is :",
      "topic": "Molecular Basis Of Inheritance ",
      "created_at": "2024-07-13T23:16:31.854+05:30",
      "updated_at": "2025-01-16T23:31:52.806+05:30",
      "detailed_solution":
          "To determine the mRNA sequence from the given DNA sequence, we follow the principles of transcription, where RNA is synthesized complementary to the DNA template strand. Here's the step-by-step process:\r\n\r\nGiven DNA Sequence:\r\n5\r\n′\r\n \r\n𝐴\r\n𝐴\r\n𝐴\r\n𝑇\r\n \r\n3\r\n′\r\n5 \r\n′\r\n AAAT3 \r\n′\r\n \r\nTranscription Rules:\r\nComplementary Base Pairing:\r\n\r\nAdenine (A) in DNA pairs with Uracil (U) in RNA.\r\nThymine (T) in DNA pairs with Adenine (A) in RNA.\r\nCytosine (C) pairs with Guanine (G), and vice versa.\r\nRNA is synthesized in the 5' to 3' direction, complementary to the 3' to 5' DNA template strand.\r\n\r\nDNA Template Strand:\r\nTo determine the template strand, we first identify the complementary strand of the given DNA sequence. The template strand is:\r\n\r\n3\r\n′\r\n \r\n𝑇\r\n𝑇\r\n𝑇\r\n𝐴\r\n \r\n5\r\n′\r\n3 \r\n′\r\n TTTA5 \r\n′\r\n \r\nmRNA Sequence:\r\nThe mRNA is transcribed from the template strand using complementary base pairing:\r\n\r\n5\r\n′\r\n \r\n𝐴\r\n𝐴\r\n𝐴\r\n𝑈\r\n \r\n3\r\n′\r\n5 \r\n′\r\n AAAU3 \r\n′\r\n \r\nFinal Answer:\r\nThe base sequence in mRNA is: 5' AAAU 3'.",
      "is_mandatory": false,
      "topic_id": 150,
      "reading_material_id": 3120,
      "question_from": "Q-bank",
      "options": [
        {
          "id": 13379,
          "description": "5'UUUU3'",
          "question_id": 3342,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.858+05:30",
          "updated_at": "2024-07-13T23:16:31.858+05:30"
        },
        {
          "id": 13380,
          "description": "3'UUUU5'",
          "question_id": 3342,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.861+05:30",
          "updated_at": "2024-07-13T23:16:31.861+05:30"
        },
        {
          "id": 13381,
          "description": "5'AAAU3'",
          "question_id": 3342,
          "is_correct": true,
          "created_at": "2024-07-13T23:16:31.864+05:30",
          "updated_at": "2024-07-13T23:16:31.864+05:30"
        },
        {
          "id": 13382,
          "description": "3'AAAU5'",
          "question_id": 3342,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.866+05:30",
          "updated_at": "2024-07-13T23:16:31.866+05:30"
        }
      ],
      "reading_material": {
        "id": 3120,
        "keywords": "[\"DNA\", \"mRNA\", \"Transcription\", \"Base sequence\", \"Nucleotides\"]",
        "created_at": "2024-11-30T18:43:03.608+05:30",
        "updated_at": "2024-11-30T18:43:03.608+05:30",
        "content_sections": [
          "<!DOCTYPE html><html><head><title>DNA and RNA Transcription</title></head><body><h1>DNA and RNA Transcription</h1><section><h2>Introduction to DNA and RNA</h2><p>DNA and RNA are molecules that carry genetic information. <span class=\"important\">DNA</span> is the primary storage location for this information, while <span class=\"important\">RNA</span> plays a crucial role in using that information to synthesize <span class=\"important\">proteins</span>.</p></section>",
          "<section><h2>Transcription: Copying DNA to RNA</h2><p><span class=\"important\">Transcription</span> is the process of copying information from <span class=\"important\">DNA</span> into <span class=\"important\">RNA</span>.  This can be thought of as making a photocopy: the <span class=\"important\">DNA</span> is the original document, and the <span class=\"important\">RNA</span> is the copy.</p></section>",
          "<section><h2>Base Pairing Rules in Transcription</h2><p>The copying process during <span class=\"important\">transcription</span> follows specific <span class=\"important\">base pairing rules</span>:</p><ul>  <li><span class=\"important\">Adenine (A)</span> in DNA pairs with <span class=\"important\">Uracil (U)</span> in RNA</li>  <li><span class=\"important\">Thymine (T)</span> in DNA pairs with <span class=\"important\">Adenine (A)</span> in RNA</li>  <li><span class=\"important\">Guanine (G)</span> pairs with <span class=\"important\">Cytosine (C)</span></li>  <li><span class=\"important\">Cytosine (C)</span> pairs with <span class=\"important\">Guanine (G)</span></li></ul><p>The order of bases in the <span class=\"important\">DNA sequence</span> is preserved in the <span class=\"important\">RNA sequence</span>, with the exception of <span class=\"important\">Thymine (T)</span> being replaced by <span class=\"important\">Uracil (U)</span>.  <span class=\"important\">RNA synthesis</span> proceeds in the <span class=\"important\">5' to 3' direction</span>, similar to <span class=\"important\">DNA replication</span>.</p></section>",
          "</body></html>"
        ],
        "practice_material": {
          "content": [
            "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>DNA and RNA Transcription</title>\n</head>\n<body>\n<h1>DNA and RNA Transcription</h1>\n<section><h2>Introduction to DNA and RNA</h2>\n<p>DNA and RNA are molecules that carry genetic information. <span class=\"important\">DNA</span> is the primary storage location for this information, while <span class=\"important\">RNA</span> plays a crucial role in using that information to synthesize <span class=\"important\" keyword=\"proteins\">________</span>.</p></section>\n</body>\n</html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><section><h2>Transcription: Copying DNA to RNA</h2>\n<p><span class=\"important\">Transcription</span> is the process of copying information from <span class=\"important\">DNA</span> into <span class=\"important\">RNA</span>.  This can be thought of as making a photocopy: the <span class=\"important\" keyword=\"DNA\">________</span> is the original document, and the <span class=\"important\" keyword=\"RNA\">________</span> is the copy.</p></section></body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><section><h2>Base Pairing Rules in Transcription</h2>\n<p>The copying process during <span class=\"important\">transcription</span> follows specific <span class=\"important\">base pairing rules</span>:</p>\n<ul>  <li>\n<span class=\"important\">Adenine (A)</span> in DNA pairs with <span class=\"important\">Uracil (U)</span> in RNA</li>  <li>\n<span class=\"important\">Thymine (T)</span> in DNA pairs with <span class=\"important\" keyword=\"Adenine (A)\">________</span> in RNA</li>  <li>\n<span class=\"important\">Guanine (G)</span> pairs with <span class=\"important\">Cytosine (C)</span>\n</li>  <li>\n<span class=\"important\">Cytosine (C)</span> pairs with <span class=\"important\" keyword=\"Guanine (G)\">________</span>\n</li>\n</ul>\n<p>The order of bases in the <span class=\"important\">DNA sequence</span> is preserved in the <span class=\"important\" keyword=\"RNA sequence\">________</span>, with the exception of <span class=\"important\">Thymine (T)</span> being replaced by <span class=\"important\" keyword=\"Uracil (U)\">________</span>.  <span class=\"important\">RNA synthesis</span> proceeds in the <span class=\"important\">5' to 3' direction</span>, similar to <span class=\"important\">DNA replication</span>.</p></section></body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n\n"
          ],
          "keywords": ["proteins", "DNA", "RNA", "Adenine (A)", "Guanine (G)", "RNA sequence", "Uracil (U)"]
        }
      }
    },
    {
      "id": 3315,
      "description":
          "Avery, MacLeod and Mc Carty used the S(virulent) and R (avirulent) strains of streptococcus pneumoniae. They isolated and purified protein, DNA, RNA from the bacteria and treated them with related enzymes. They concluded that :",
      "topic": "Molecular Basis Of Inheritance ",
      "created_at": "2024-07-13T23:16:31.369+05:30",
      "updated_at": "2024-11-30T18:42:58.881+05:30",
      "detailed_solution":
          "**Explanation:**\n\n* Transformation is a process by which genetic material is transferred from one organism to another.\n* In the Griffith's experiment, heat-killed S (virulent) strain of Streptococcus pneumoniae transformed the R (avirulent) strain into the S strain.\n* Avery, MacLeod, and McCarty conducted experiments to identify the transforming agent.\n* They treated the heated S strain bacteria with enzymes that break down proteins, DNA, and RNA.\n* Only the enzyme that broke down DNA inactivated the transforming agent.\n* This experiment demonstrated that DNA was the transforming agent, responsible for transferring the genetic information that allowed the R strain to become virulent.\n\n**Additional Context:**\n\n* The discovery of DNA as the genetic material was a significant milestone in molecular biology.\n* The discovery of transformation paved the way for the understanding of gene function and regulation.\n\n**Relevance to NEET Exam:**\n\nThis concept of transformation and the role of DNA as the genetic material is a fundamental topic in molecular biology and is frequently tested in the NEET exam. Understanding the experiment conducted by Avery, MacLeod, and McCarty is crucial for grasping the concept of genetic inheritance.",
      "is_mandatory": false,
      "topic_id": 150,
      "reading_material_id": 3093,
      "question_from": "Q-bank",
      "options": [
        {
          "id": 13271,
          "description": "DNA was transforming agent",
          "question_id": 3315,
          "is_correct": true,
          "created_at": "2024-07-13T23:16:31.372+05:30",
          "updated_at": "2024-07-13T23:16:31.372+05:30"
        },
        {
          "id": 13272,
          "description": "RNA was transforming agent",
          "question_id": 3315,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.375+05:30",
          "updated_at": "2024-07-13T23:16:31.375+05:30"
        },
        {
          "id": 13273,
          "description": "Protein was transforming agent",
          "question_id": 3315,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.378+05:30",
          "updated_at": "2024-07-13T23:16:31.378+05:30"
        },
        {
          "id": 13274,
          "description": "All are correct",
          "question_id": 3315,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.381+05:30",
          "updated_at": "2024-07-13T23:16:31.381+05:30"
        }
      ],
      "reading_material": {
        "id": 3093,
        "keywords":
            "[\"DNA\", \"Streptococcus pneumoniae\", \"transforming principle\", \"Avery, MacLeod and McCarty\", \"Hershey-Chase experiment\"]",
        "created_at": "2024-11-30T18:42:58.805+05:30",
        "updated_at": "2024-11-30T18:42:58.805+05:30",
        "content_sections": [
          "<!DOCTYPE html><html><head><title>The Avery-MacLeod-McCarty Experiment</title></head><body><h1>The Discovery of DNA as the Genetic Material</h1><p>Scientists were trying to figure out what molecule carries genetic information – the instructions that get passed down from parent to offspring. Proteins were initially thought to be the most likely candidate because they're complex and do many things in cells.</p>",
          "<h2>The Avery-MacLeod-McCarty Experiment: Background</h2><p>This experiment aimed to identify the molecule responsible for carrying <span class=\"important\">genetic information</span>.  The focus was on two strains of bacteria:</p><ul>  <li><strong>S (virulent):</strong> Caused disease.</li>  <li><strong>R (non-virulent):</strong> Did not cause disease.</li></ul>",
          "<h2>The Avery-MacLeod-McCarty Experiment: Procedure</h2><p>The experiment involved these key steps:</p><ol>  <li>Extraction of the disease-causing component from the \"S\" bacteria.</li>  <li>Separation of this component into its constituent parts: <span class=\"important\">proteins</span>, <span class=\"important\">RNA</span>, and <span class=\"important\">DNA</span>.</li>  <li>Individual testing of each component's ability to transform harmless \"R\" bacteria into disease-causing bacteria.</li>  <li>Use of <span class=\"important\">enzymes</span> to selectively break down each component (<span class=\"important\">proteins</span>, <span class=\"important\">RNA</span>, and <span class=\"important\">DNA</span>) in separate experiments.</li></ol>",
          "<h2>The Avery-MacLeod-McCarty Experiment: Results</h2><p>The results of the experiment were significant:</p><ul>  <li>Destruction of <span class=\"highlight\">proteins</span> or <span class=\"highlight\">RNA</span> did not prevent the transformation of harmless \"R\" bacteria into harmful bacteria.</li>  <li>However, destruction of <span class=\"highlight\">DNA</span> prevented the transformation; the harmless \"R\" bacteria remained harmless.</li></ul>",
          "<h2>The Avery-MacLeod-McCarty Experiment: Conclusion</h2><p>The conclusion drawn from this experiment was that <span class=\"highlight\">DNA</span>, and not <span class=\"highlight\">proteins</span> or <span class=\"highlight\">RNA</span>, was the crucial component responsible for the transformation of the bacteria. This landmark study definitively identified <span class=\"highlight\">DNA</span> as the <span class=\"highlight\">genetic material</span>.</p></body></html>"
        ],
        "practice_material": {
          "content": [
            "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>The Avery-MacLeod-McCarty Experiment</title>\n</head>\n<body>\n<h1>The Discovery of DNA as the Genetic Material</h1>\n<p>Scientists were trying to figure out what molecule carries genetic information – the instructions that get passed down from parent to offspring. Proteins were initially thought to be the most likely candidate because they're complex and do many things in cells.</p>\n</body>\n</html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>The Avery-MacLeod-McCarty Experiment: Background</h2>\n<p>This experiment aimed to identify the molecule responsible for carrying <span class=\"important\" keyword=\"genetic information\">________</span>.  The focus was on two strains of bacteria:</p>\n<ul>  <li>\n<strong>S (virulent):</strong> Caused disease.</li>  <li>\n<strong>R (non-virulent):</strong> Did not cause disease.</li>\n</ul>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>The Avery-MacLeod-McCarty Experiment: Procedure</h2>\n<p>The experiment involved these key steps:</p>\n<ol>  <li>Extraction of the disease-causing component from the \"S\" bacteria.</li>  <li>Separation of this component into its constituent parts: <span class=\"important\">proteins</span>, <span class=\"important\">RNA</span>, and <span class=\"important\">DNA</span>.</li>  <li>Individual testing of each component's ability to transform harmless \"R\" bacteria into disease-causing bacteria.</li>  <li>Use of <span class=\"important\" keyword=\"enzymes\">________</span> to selectively break down each component (<span class=\"important\" keyword=\"proteins\">________</span>, <span class=\"important\" keyword=\"RNA\">________</span>, and <span class=\"important\" keyword=\"DNA\">________</span>) in separate experiments.</li>\n</ol>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>The Avery-MacLeod-McCarty Experiment: Results</h2>\n<p>The results of the experiment were significant:</p>\n<ul>  <li>Destruction of <span class=\"highlight\">proteins</span> or <span class=\"highlight\">RNA</span> did not prevent the transformation of harmless \"R\" bacteria into harmful bacteria.</li>  <li>However, destruction of <span class=\"highlight\">DNA</span> prevented the transformation; the harmless \"R\" bacteria remained harmless.</li>\n</ul>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>The Avery-MacLeod-McCarty Experiment: Conclusion</h2>\n<p>The conclusion drawn from this experiment was that <span class=\"highlight\">DNA</span>, and not <span class=\"highlight\">proteins</span> or <span class=\"highlight\">RNA</span>, was the crucial component responsible for the transformation of the bacteria. This landmark study definitively identified <span class=\"highlight\">DNA</span> as the <span class=\"highlight\">genetic material</span>.</p>\n</body></html>\n"
          ],
          "keywords": ["genetic information", "enzymes", "proteins", "RNA", "DNA"]
        }
      }
    },
    {
      "id": 3381,
      "description": "Identify the characteristic which is not applicable to the genetic code:",
      "topic": "Molecular Basis Of Inheritance ",
      "created_at": "2024-07-13T23:16:32.539+05:30",
      "updated_at": "2024-11-30T18:43:10.542+05:30",
      "detailed_solution":
          "**Explanation:**\n\nThe genetic code is the set of rules that determines how information from a gene is translated into a protein. It consists of three-nucleotide sequences called codons, each of which codes for a specific amino acid. There are 20 common amino acids, and each amino acid is coded for by at least one codon.\n\nThe genetic code is characterized by the following properties:\n\n* It is **specific**, meaning that each codon codes for a specific amino acid.\n* It is **universal**, meaning that the same codon codes for the same amino acid in all organisms.\n* It is **non-overlapping**, meaning that each nucleotide is used only once in a codon.\n* It is **degenerate**, meaning that most amino acids are coded for by more than one codon.\n\n**Non-polarity** is not a characteristic of the genetic code. Non-polarity refers to the chemical nature of certain amino acids, not to the genetic code itself. Polar amino acids have charged side chains, while non-polar amino acids have uncharged side chains. The polarity of an amino acid affects its solubility and its interactions with other molecules.\n\n**Additional context:**\n\nThe genetic code was first deciphered by Marshall Nirenberg and Har Gobind Khorana in the 1960s. They used a technique called cell-free protein synthesis to determine which codons coded for which amino acids. The genetic code has since been found to be universal in all living organisms, with a few minor exceptions.",
      "is_mandatory": false,
      "topic_id": 150,
      "reading_material_id": 3159,
      "question_from": "Q-bank",
      "options": [
        {
          "id": 13535,
          "description": "Non-Polar",
          "question_id": 3381,
          "is_correct": true,
          "created_at": "2024-07-13T23:16:32.542+05:30",
          "updated_at": "2024-07-13T23:16:32.542+05:30"
        },
        {
          "id": 13536,
          "description": "Non-Overlapping",
          "question_id": 3381,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.544+05:30",
          "updated_at": "2024-07-13T23:16:32.544+05:30"
        },
        {
          "id": 13537,
          "description": "Commaless",
          "question_id": 3381,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.546+05:30",
          "updated_at": "2024-07-13T23:16:32.546+05:30"
        },
        {
          "id": 13538,
          "description": "Universal",
          "question_id": 3381,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.549+05:30",
          "updated_at": "2024-07-13T23:16:32.549+05:30"
        }
      ],
      "reading_material": {
        "id": 3159,
        "keywords": "[\"Genetic Code\", \"DNA\", \"RNA\", \"Transcription\", \"Translation\"]",
        "created_at": "2024-11-30T18:43:10.465+05:30",
        "updated_at": "2024-11-30T18:43:10.465+05:30",
        "content_sections": [
          "<!DOCTYPE html><html><head><title>Genetic Code Characteristics</title></head><body><h1>The Genetic Code</h1><h2>Introduction to the Genetic Code</h2><p>This chapter explains how our genes (made of DNA) create proteins. The \"genetic code\" is the set of rules that translates the DNA's language (<span class=\"important\">nucleotides</span>) into the language of proteins (<span class=\"important\">amino acids</span>).</p>",
          "<h2>Key Characteristics of the Genetic Code</h2><p>The code has several important features:</p><ul>  <li><strong>Non-overlapping:</strong> Each part of the code is read only once. There's no re-using parts.</li>  <li><strong>Commaless:</strong> There are no breaks or separators between the code's parts. It's one continuous sequence.</li>  <li><strong>Universal:</strong> The code is the same in nearly all living things, from tiny bacteria to humans.</li></ul>",
          "<h2>Characteristic NOT Applying to the Genetic Code: <span class=\"highlight\">Polarity</span></h2><p>The concept of \"polarity\" (<span class=\"important\">having positive and negative charges</span>) is not relevant to how the genetic code works. The genetic code is about the sequence of molecules, not their electrical charge.</p></body></html>"
        ],
        "practice_material": {
          "content": [
            "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>Genetic Code Characteristics</title>\n</head>\n<body>\n<h1>The Genetic Code</h1>\n<h2>Introduction to the Genetic Code</h2>\n<p>This chapter explains how our genes (made of DNA) create proteins. The \"genetic code\" is the set of rules that translates the DNA's language (<span class=\"important\" keyword=\"nucleotides\">________</span>) into the language of proteins (<span class=\"important\" keyword=\"amino acids\">________</span>).</p>\n</body>\n</html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Key Characteristics of the Genetic Code</h2>\n<p>The code has several important features:</p>\n<ul>  <li>\n<strong>Non-overlapping:</strong> Each part of the code is read only once. There's no re-using parts.</li>  <li>\n<strong>Commaless:</strong> There are no breaks or separators between the code's parts. It's one continuous sequence.</li>  <li>\n<strong>Universal:</strong> The code is the same in nearly all living things, from tiny bacteria to humans.</li>\n</ul>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Characteristic NOT Applying to the Genetic Code: <span class=\"highlight\">Polarity</span>\n</h2>\n<p>The concept of \"polarity\" (<span class=\"important\" keyword=\"having positive and negative charges\">________</span>) is not relevant to how the genetic code works. The genetic code is about the sequence of molecules, not their electrical charge.</p>\n</body></html>\n"
          ],
          "keywords": ["nucleotides", "amino acids", "having positive and negative charges"]
        }
      }
    },
    {
      "id": 3295,
      "description": "Ribose is differentiable from deoxyribose in having :",
      "topic": "Molecular Basis Of Inheritance ",
      "created_at": "2024-07-13T23:16:31.055+05:30",
      "updated_at": "2024-11-30T18:42:55.048+05:30",
      "detailed_solution":
          "**Detailed Explanation:**\n\nRibose and deoxyribose are both pentose sugars (having five carbon atoms) that form the backbone of nucleic acids (DNA and RNA). The main difference between them lies in the presence or absence of a hydroxyl group (-OH) at the second carbon atom.\n\n* **Ribose:** Has a hydroxyl group (-OH) attached to the second carbon atom (2'-OH).\n* **Deoxyribose:** Lacks the hydroxyl group at the second carbon atom and instead has a hydrogen atom (-H) attached to it.\n\n**Why is the answer correct?**\n\nThe question asks for the difference between ribose and deoxyribose. The answer, \"Hydroxyl group at 2nd carbon,\" correctly identifies that the presence of a hydroxyl group at the second carbon atom is what distinguishes ribose from deoxyribose.\n\n**Additional Context:**\n\n* Ribose is found in RNA (ribonucleic acid).\n* Deoxyribose is found in DNA (deoxyribonucleic acid).\n* The absence of the hydroxyl group at the second carbon atom in deoxyribose makes DNA more stable and less prone to hydrolysis (chemical breakdown).\n* The hydroxyl group in ribose allows for the formation of secondary structures, such as hydrogen bonding and base pairing, which are crucial for the function of RNA.",
      "is_mandatory": false,
      "topic_id": 150,
      "reading_material_id": 3073,
      "question_from": "Q-bank",
      "options": [
        {
          "id": 13191,
          "description": "Two extra oxygen",
          "question_id": 3295,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.058+05:30",
          "updated_at": "2024-07-13T23:16:31.058+05:30"
        },
        {
          "id": 13192,
          "description": "No oxygen",
          "question_id": 3295,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.060+05:30",
          "updated_at": "2024-07-13T23:16:31.060+05:30"
        },
        {
          "id": 13193,
          "description": "Hydroxyl group at 2nd carbon",
          "question_id": 3295,
          "is_correct": true,
          "created_at": "2024-07-13T23:16:31.062+05:30",
          "updated_at": "2024-07-13T23:16:31.062+05:30"
        },
        {
          "id": 13194,
          "description": "One extra hydrogen",
          "question_id": 3295,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.064+05:30",
          "updated_at": "2024-07-13T23:16:31.064+05:30"
        }
      ],
      "reading_material": {
        "id": 3073,
        "keywords": "[\"Ribose\", \"Deoxyribose\", \"Hydroxyl group\", \"2nd carbon\", \"Nucleotides\"]",
        "created_at": "2024-11-30T18:42:54.966+05:30",
        "updated_at": "2024-11-30T18:42:54.966+05:30",
        "content_sections": [
          "<!DOCTYPE html><html><head><title>Ribose vs. Deoxyribose</title></head><body><h1>Ribose and Deoxyribose</h1><h2>Introduction</h2><p>Ribose and deoxyribose are both types of <span class=\"important\">sugar molecules</span>, similar to the sugar you put in your coffee, but smaller and with a different structure. They are fundamental building blocks of <span class=\"important\">RNA</span> and <span class=\"important\">DNA</span>, respectively.</p>",
          "<h2>Key Difference: The 2' Carbon</h2><p>The primary difference lies in the structure at the <span class=\"highlight\"><span class=\"important\">2' carbon atom</span></span> of the <span class=\"important\">sugar molecule</span>. Ribose has a <span class=\"highlight\"><span class=\"important\">hydroxyl group</span></span> (–OH) attached to its <span class=\"highlight\"><span class=\"important\">2' carbon</span></span>, whereas deoxyribose has a <span class=\"important\">hydrogen atom</span> (–H) in that position.</p>",
          "<h2>Significance of the Difference</h2><p>This seemingly minor difference in the substituent at the <span class=\"important\">2' carbon</span> significantly impacts the <span class=\"important\">stability</span> of the resulting <span class=\"important\">RNA</span> and <span class=\"important\">DNA</span> molecules.  The presence of the <span class=\"important\">hydroxyl group</span> in ribose makes <span class=\"important\">RNA</span> less stable than <span class=\"important\">DNA</span>, which has deoxyribose.</p></body></html>"
        ],
        "practice_material": {
          "content": [
            "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>Ribose vs. Deoxyribose</title>\n</head>\n<body>\n<h1>Ribose and Deoxyribose</h1>\n<h2>Introduction</h2>\n<p>Ribose and deoxyribose are both types of <span class=\"important\">sugar molecules</span>, similar to the sugar you put in your coffee, but smaller and with a different structure. They are fundamental building blocks of <span class=\"important\">RNA</span> and <span class=\"important\">DNA</span>, respectively.</p>\n</body>\n</html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Key Difference: The 2' Carbon</h2>\n<p>The primary difference lies in the structure at the <span class=\"highlight\"><span class=\"important\" keyword=\"2' carbon atom\">________</span></span> of the <span class=\"important\">sugar molecule</span>. Ribose has a <span class=\"highlight\"><span class=\"important\">hydroxyl group</span></span> (–OH) attached to its <span class=\"highlight\"><span class=\"important\">2' carbon</span></span>, whereas deoxyribose has a <span class=\"important\" keyword=\"hydrogen atom\">________</span> (–H) in that position.</p>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Significance of the Difference</h2>\n<p>This seemingly minor difference in the substituent at the <span class=\"important\" keyword=\"2' carbon\">________</span> significantly impacts the <span class=\"important\" keyword=\"stability\">________</span> of the resulting <span class=\"important\">RNA</span> and <span class=\"important\">DNA</span> molecules.  The presence of the <span class=\"important\" keyword=\"hydroxyl group\">________</span> in ribose makes <span class=\"important\" keyword=\"RNA\">________</span> less stable than <span class=\"important\" keyword=\"DNA\">________</span>, which has deoxyribose.</p>\n</body></html>\n"
          ],
          "keywords": [
            "2' carbon atom",
            "hydrogen atom",
            "2' carbon",
            "stability",
            "hydroxyl group",
            "RNA",
            "DNA"
          ]
        }
      }
    },
    {
      "id": 3356,
      "description": "A DNA strand is directly involved in the synthesis of all the following except:",
      "topic": "Molecular Basis Of Inheritance ",
      "created_at": "2024-07-13T23:16:32.135+05:30",
      "updated_at": "2024-11-30T18:43:06.114+05:30",
      "detailed_solution":
          "**Explanation:**\nDNA stands for deoxyribonucleic acid. It is a molecule that contains the instructions for an organism's development and characteristics. \n\nDNA is mainly involved in the synthesis of RNA (ribonucleic acid) through a process called transcription. RNA is then involved in the synthesis of proteins through a process called translation. Therefore, DNA is indirectly involved in the synthesis of proteins.\n\nProteins are synthesized on ribosomes, which are structures in the cell that read the genetic code in RNA and assemble the correct sequence of amino acids.\n\n**Additional Context:**\nDNA is a double-stranded molecule that forms a helix shape. Each strand of DNA is made up of a series of nucleotides, which are composed of a deoxyribose sugar, a phosphate group, and a nitrogenous base. \n\nThe four nitrogenous bases in DNA are adenine (A), thymine (T), cytosine (C), and guanine (G). The sequence of these bases along the DNA strand determines the genetic code for an organism.\n\nDNA is found in the nucleus of cells. When a cell divides, the DNA is replicated so that each new cell has its own copy of the genetic code.",
      "is_mandatory": false,
      "topic_id": 150,
      "reading_material_id": 3134,
      "question_from": "Q-bank",
      "options": [
        {
          "id": 13435,
          "description": "Another DNA",
          "question_id": 3356,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.139+05:30",
          "updated_at": "2024-07-13T23:16:32.139+05:30"
        },
        {
          "id": 13436,
          "description": "t-RNA & m-RNA",
          "question_id": 3356,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.142+05:30",
          "updated_at": "2024-07-13T23:16:32.142+05:30"
        },
        {
          "id": 13437,
          "description": "r-RNA",
          "question_id": 3356,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.145+05:30",
          "updated_at": "2024-07-13T23:16:32.145+05:30"
        },
        {
          "id": 13438,
          "description": "Protein",
          "question_id": 3356,
          "is_correct": true,
          "created_at": "2024-07-13T23:16:32.147+05:30",
          "updated_at": "2024-07-13T23:16:32.147+05:30"
        }
      ],
      "reading_material": {
        "id": 3134,
        "keywords":
            "[\"DNA replication\", \"Transcription\", \"Translation\", \"Genetic code\", \"Central dogma\"]",
        "created_at": "2024-11-30T18:43:06.042+05:30",
        "updated_at": "2024-11-30T18:43:06.042+05:30",
        "content_sections": [
          "<!DOCTYPE html><html><head><title>DNA and Genetic Information</title></head><body><h1>Chapter Overview: DNA and Genetic Information</h1><p>This chapter explores how DNA functions to transmit genetic information.  It covers the following key processes:</p><h2>DNA Replication</h2><p>DNA replicates itself to create copies, a process known as <span class=\"important\">replication</span>.</p>",
          "<h2>Transcription</h2><p>DNA creates RNA molecules through a process called <span class=\"important\">transcription</span>.  There are three main types of RNA:</p><ul>  <li><span class=\"important\">Messenger RNA (mRNA)</span></li>  <li><span class=\"important\">Transfer RNA (tRNA)</span></li>  <li><span class=\"important\">Ribosomal RNA (rRNA)</span></li></ul><p>These RNA molecules are crucial for protein synthesis.</p>",
          "<h2>Translation</h2><p>The information encoded in RNA is utilized to construct proteins in a process called <span class=\"important\">translation</span>.  This process involves <span class=\"important\">mRNA</span>, <span class=\"important\">tRNA</span>, and <span class=\"important\">rRNA</span>, but <span class=\"highlight\">DNA itself is not directly involved</span>.</p></body></html>"
        ],
        "practice_material": {
          "content": [
            "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>DNA and Genetic Information</title>\n</head>\n<body>\n<h1>Chapter Overview: DNA and Genetic Information</h1>\n<p>This chapter explores how DNA functions to transmit genetic information.  It covers the following key processes:</p>\n<h2>DNA Replication</h2>\n<p>DNA replicates itself to create copies, a process known as <span class=\"important\" keyword=\"replication\">________</span>.</p>\n</body>\n</html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Transcription</h2>\n<p>DNA creates RNA molecules through a process called <span class=\"important\">transcription</span>.  There are three main types of RNA:</p>\n<ul>  <li><span class=\"important\" keyword=\"Messenger RNA (mRNA)\">________</span></li>  <li><span class=\"important\" keyword=\"Transfer RNA (tRNA)\">________</span></li>  <li><span class=\"important\" keyword=\"Ribosomal RNA (rRNA)\">________</span></li>\n</ul>\n<p>These RNA molecules are crucial for protein synthesis.</p>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Translation</h2>\n<p>The information encoded in RNA is utilized to construct proteins in a process called <span class=\"important\" keyword=\"translation\">________</span>.  This process involves <span class=\"important\" keyword=\"mRNA\">________</span>, <span class=\"important\">tRNA</span>, and <span class=\"important\" keyword=\"rRNA\">________</span>, but <span class=\"highlight\">DNA itself is not directly involved</span>.</p>\n</body></html>\n"
          ],
          "keywords": [
            "replication",
            "Messenger RNA (mRNA)",
            "Transfer RNA (tRNA)",
            "Ribosomal RNA (rRNA)",
            "translation",
            "mRNA",
            "rRNA"
          ]
        }
      }
    },
    {
      "id": 3343,
      "description":
          "The genes are responsible for growth and differentiation in an organism through regulation of :",
      "topic": "Molecular Basis Of Inheritance ",
      "created_at": "2024-07-13T23:16:31.875+05:30",
      "updated_at": "2024-11-30T18:43:03.864+05:30",
      "detailed_solution":
          "**The answer is correct because:**\n\n* **Genes:** Genes are segments of DNA that code for specific proteins.\n* **Growth and differentiation:** Growth is the increase in size of an organism, while differentiation is the process by which cells become specialized to perform specific functions.\n* **Translation and transcription:** Translation is the process by which the genetic code in mRNA is decoded to produce a protein. Transcription is the process by which DNA is copied into mRNA.\n\n**Additional context:**\n\n* **Proteins:** Proteins are the building blocks of cells and are responsible for a wide variety of functions, including growth and differentiation.\n* **mRNA:** mRNA is a type of RNA that carries the genetic code from the nucleus to the ribosomes, where translation takes place.\n\n**Therefore, the genes are responsible for growth and differentiation in an organism through regulation of translation and transcription.**",
      "is_mandatory": false,
      "topic_id": 150,
      "reading_material_id": 3121,
      "question_from": "Q-bank",
      "options": [
        {
          "id": 13383,
          "description": "Translocation",
          "question_id": 3343,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.878+05:30",
          "updated_at": "2024-07-13T23:16:31.878+05:30"
        },
        {
          "id": 13384,
          "description": "Transformation",
          "question_id": 3343,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.880+05:30",
          "updated_at": "2024-07-13T23:16:31.880+05:30"
        },
        {
          "id": 13385,
          "description": "Transduction and translation",
          "question_id": 3343,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.883+05:30",
          "updated_at": "2024-07-13T23:16:31.883+05:30"
        },
        {
          "id": 13386,
          "description": "Translation and transcription",
          "question_id": 3343,
          "is_correct": true,
          "created_at": "2024-07-13T23:16:31.885+05:30",
          "updated_at": "2024-07-13T23:16:31.885+05:30"
        }
      ],
      "reading_material": {
        "id": 3121,
        "keywords": "[\"genes\", \"growth\", \"differentiation\", \"transcription\", \"translation\"]",
        "created_at": "2024-11-30T18:43:03.782+05:30",
        "updated_at": "2024-11-30T18:43:03.782+05:30",
        "content_sections": [
          "<!DOCTYPE html><html><head><title>Genes and Protein Synthesis</title><style>body {  font-family: sans-serif;  line-height: 1.6;}</style></head><body><h1>Genes and Protein Synthesis</h1><h2>What are Genes?</h2><p>Genes are like instruction manuals for building and operating a living thing. These instructions are written in <span class=\"important\">DNA</span>.</p>",
          "<h2>Transcription: Copying the Instructions</h2><p>To use these instructions, the cell first makes a copy of the relevant <span class=\"important\">DNA</span> section into a similar molecule called <span class=\"important\">RNA</span> (<span class=\"important\">transcription</span>). Think of this as photocopying a page from the manual.</p>",
          "<h2>Translation: Building Proteins</h2><p>Then, the <span class=\"important\">RNA</span> copy is used to build <span class=\"important\">proteins</span> (<span class=\"important\">translation</span>). <span class=\"important\">Proteins</span> are the tiny machines that actually do the work in the cell – they build structures, carry out chemical reactions, and so on. This is like following the instructions on the photocopied page to build something.</p>",
          "<h2>Regulation of Protein Synthesis</h2><p>The cell carefully controls <em>when</em> and <em>how much</em> of each <span class=\"important\">protein</span> is made. This control over the copying (<span class=\"highlight\"><span class=\"important\">transcription</span></span>) and building (<span class=\"highlight\"><span class=\"important\">translation</span></span>) processes is crucial for the organism's growth and development. It determines which parts of the body develop and how they function.</p></body></html>"
        ],
        "practice_material": {
          "content": [
            "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>Genes and Protein Synthesis</title>\n<style>body {  font-family: sans-serif;  line-height: 1.6;}</style>\n</head>\n<body>\n<h1>Genes and Protein Synthesis</h1>\n<h2>What are Genes?</h2>\n<p>Genes are like instruction manuals for building and operating a living thing. These instructions are written in <span class=\"important\">DNA</span>.</p>\n</body>\n</html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Transcription: Copying the Instructions</h2>\n<p>To use these instructions, the cell first makes a copy of the relevant <span class=\"important\" keyword=\"DNA\">________</span> section into a similar molecule called <span class=\"important\">RNA</span> (<span class=\"important\">transcription</span>). Think of this as photocopying a page from the manual.</p>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Translation: Building Proteins</h2>\n<p>Then, the <span class=\"important\" keyword=\"RNA\">________</span> copy is used to build <span class=\"important\">proteins</span> (<span class=\"important\">translation</span>). <span class=\"important\" keyword=\"Proteins\">________</span> are the tiny machines that actually do the work in the cell – they build structures, carry out chemical reactions, and so on. This is like following the instructions on the photocopied page to build something.</p>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Regulation of Protein Synthesis</h2>\n<p>The cell carefully controls <em>when</em> and <em>how much</em> of each <span class=\"important\" keyword=\"protein\">________</span> is made. This control over the copying (<span class=\"highlight\"><span class=\"important\" keyword=\"transcription\">________</span></span>) and building (<span class=\"highlight\"><span class=\"important\" keyword=\"translation\">________</span></span>) processes is crucial for the organism's growth and development. It determines which parts of the body develop and how they function.</p>\n</body></html>\n"
          ],
          "keywords": ["DNA", "RNA", "Proteins", "protein", "transcription", "translation"]
        }
      }
    },
    {
      "id": 3316,
      "description": "Genetic information is carried out by long chain molecule made up of :",
      "topic": "Molecular Basis Of Inheritance ",
      "created_at": "2024-07-13T23:16:31.389+05:30",
      "updated_at": "2024-11-30T18:42:59.047+05:30",
      "detailed_solution":
          "**Answer: Nucleotides**\n\n**Explanation:**\n\nGenetic information is carried out by DNA (deoxyribonucleic acid) and RNA (ribonucleic acid). These are long chain molecules made up of repeating units called nucleotides. Each nucleotide consists of a nitrogenous base, a pentose sugar, and a phosphate group. The nitrogenous bases are adenine (A), thymine (T), cytosine (C), and guanine (G) in DNA, and adenine (A), uracil (U), cytosine (C), and guanine (G) in RNA. The sequence of nucleotides in DNA and RNA carries the genetic code, which determines the traits of an organism.\n\n**Additional Context:**\n\n* DNA is found in the nucleus of cells, while RNA is found in the nucleus, cytoplasm, and ribosomes.\n* DNA has a double-helix structure, while RNA has a single-stranded structure.\n* DNA is more stable than RNA and serves as the permanent repository of genetic information.\n* RNA is involved in protein synthesis and other cellular processes.\n* The genetic code is universal, meaning that the same sequence of nucleotides codes for the same amino acids in all living organisms.",
      "is_mandatory": false,
      "topic_id": 150,
      "reading_material_id": 3094,
      "question_from": "Q-bank",
      "options": [
        {
          "id": 13275,
          "description": "Amino acids",
          "question_id": 3316,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.392+05:30",
          "updated_at": "2024-07-13T23:16:31.392+05:30"
        },
        {
          "id": 13276,
          "description": "Enzymes",
          "question_id": 3316,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.394+05:30",
          "updated_at": "2024-07-13T23:16:31.394+05:30"
        },
        {
          "id": 13277,
          "description": "Nucleotides",
          "question_id": 3316,
          "is_correct": true,
          "created_at": "2024-07-13T23:16:31.396+05:30",
          "updated_at": "2024-07-13T23:16:31.396+05:30"
        },
        {
          "id": 13278,
          "description": "Histone proteins",
          "question_id": 3316,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.398+05:30",
          "updated_at": "2024-07-13T23:16:31.398+05:30"
        }
      ],
      "reading_material": {
        "id": 3094,
        "keywords": "[\"Nucleotides\", \"DNA\", \"RNA\", \"Genetic Material\", \"Polynucleotide Chain\"]",
        "created_at": "2024-11-30T18:42:58.975+05:30",
        "updated_at": "2024-11-30T18:42:58.975+05:30",
        "content_sections": [
          "<!DOCTYPE html><html><head><title>Understanding DNA</title></head><body><h1>Understanding Your Genetic Information</h1><h2>What is DNA?</h2><p>Think of your genetic information as a long instruction manual. This manual is written in a special code using a chain of smaller units linked together. These smaller units are called <span class=\"important\"><strong><span class=\"highlight\">nucleotides</span></strong></span>. They're like the individual letters in the alphabet that, when arranged in a specific order, create words, sentences, and eventually, the whole instruction manual.</p>",
          "<h2>The Building Blocks of DNA</h2><p>This instruction manual is <span class=\"important\"><strong>DNA</strong></span>, and it's made entirely of these nucleotide building blocks. Other important molecules help the instructions work, but the actual code itself is carried by the sequence of <span class=\"important\"><span class=\"highlight\">nucleotides</span></span> in the DNA.</p></body></html>"
        ],
        "practice_material": {
          "content": [
            "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>Understanding DNA</title>\n</head>\n<body>\n<h1>Understanding Your Genetic Information</h1>\n<h2>What is DNA?</h2>\n<p>Think of your genetic information as a long instruction manual. This manual is written in a special code using a chain of smaller units linked together. These smaller units are called <span class=\"important\"><strong><span class=\"highlight\">nucleotides</span></strong></span>. They're like the individual letters in the alphabet that, when arranged in a specific order, create words, sentences, and eventually, the whole instruction manual.</p>\n</body>\n</html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>The Building Blocks of DNA</h2>\n<p>This instruction manual is <span class=\"important\" keyword=\"DNA\">________</span>, and it's made entirely of these nucleotide building blocks. Other important molecules help the instructions work, but the actual code itself is carried by the sequence of <span class=\"important\" keyword=\"nucleotides\">________</span> in the DNA.</p>\n</body></html>\n"
          ],
          "keywords": ["DNA", "nucleotides"]
        }
      }
    },
    {
      "id": 3376,
      "description": "Anticodons are found in:",
      "topic": "Molecular Basis Of Inheritance ",
      "created_at": "2024-07-13T23:16:32.456+05:30",
      "updated_at": "2024-11-30T18:43:09.648+05:30",
      "detailed_solution":
          "**Explanation:**\n\nAnticodons are complementary triplets of RNA nucleotides found in **transfer RNA (tRNA)** molecules. Each tRNA molecule carries a specific anticodon that is complementary to the codon (a sequence of three nucleotides) on a messenger RNA (mRNA) molecule. During protein synthesis, the anticodon on the tRNA molecule binds to the complementary codon on the mRNA molecule, bringing the correct amino acid to the ribosome for incorporation into the growing polypeptide chain.\n\nTherefore, the correct answer to the question \"Anticodons are found in:\" is **tRNA**.\n\n**Additional Context:**\n\n* **Codon:** A sequence of three nucleotides on an mRNA molecule that codes for a specific amino acid or a stop signal.\n* **Ribosome:** A complex structure in the cell that assembles proteins based on the sequence of codons on mRNA molecules.\n* **Protein Synthesis:** The process of assembling proteins by joining amino acids together in a specific sequence.",
      "is_mandatory": false,
      "topic_id": 150,
      "reading_material_id": 3154,
      "question_from": "Q-bank",
      "options": [
        {
          "id": 13515,
          "description": "mRNA",
          "question_id": 3376,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.459+05:30",
          "updated_at": "2024-07-13T23:16:32.459+05:30"
        },
        {
          "id": 13516,
          "description": "tRNA",
          "question_id": 3376,
          "is_correct": true,
          "created_at": "2024-07-13T23:16:32.461+05:30",
          "updated_at": "2024-07-13T23:16:32.461+05:30"
        },
        {
          "id": 13517,
          "description": "rRNA",
          "question_id": 3376,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.462+05:30",
          "updated_at": "2024-07-13T23:16:32.462+05:30"
        },
        {
          "id": 13518,
          "description": "In all",
          "question_id": 3376,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.464+05:30",
          "updated_at": "2024-07-13T23:16:32.464+05:30"
        }
      ],
      "reading_material": {
        "id": 3154,
        "keywords": "[\"anticodon\", \"tRNA\", \"mRNA\", \"codon\", \"genetic code\"]",
        "created_at": "2024-11-30T18:43:09.572+05:30",
        "updated_at": "2024-11-30T18:43:09.572+05:30",
        "content_sections": [
          "<!DOCTYPE html><html><head><title>Gene to Protein: The Translation Process</title></head><body><h1>Gene to Protein: The Translation Process</h1><h2>Introduction to Translation</h2><p>This chapter explains how our genes (<span class=\"important\">DNA</span>) create proteins. A big part of that is a process called <span class=\"important\">translation</span>. Think of translation as converting a message written in one language (<span class=\"important\">DNA</span>'s genetic code) into another language (a protein).</p>",
          "<h2>The Role of Transfer RNA (tRNA)</h2><p>To do this <span class=\"important\">translation</span>, the cell uses special molecules called <span class=\"important\">transfer RNAs (tRNAs)</span>. Each <span class=\"important\">tRNA</span> carries a specific building block for proteins (<span class=\"important\">an amino acid</span>).</p>",
          "<h2>Codons and Anticodons: The Key to Accurate Translation</h2><p>To make sure the right building block is used, each <span class=\"highlight\"><span class=\"important\">tRNA</span></span> has a special three-letter code called an <span class=\"highlight\"><span class=\"important\">anticodon</span></span>. This <span class=\"highlight\"><span class=\"important\">anticodon</span></span> is like a key that fits a specific lock – the <span class=\"important\">codon</span> – on the <span class=\"important\">mRNA</span> molecule (a copy of the <span class=\"important\">DNA</span> code). The <span class=\"important\">mRNA codon</span> tells the cell which <span class=\"important\">amino acid</span> is needed next, and the matching <span class=\"important\">tRNA anticodon</span> ensures the right one is added. This accurate pairing is crucial for building the correct protein.</p></body></html>"
        ],
        "practice_material": {
          "content": [
            "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>Gene to Protein: The Translation Process</title>\n</head>\n<body>\n<h1>Gene to Protein: The Translation Process</h1>\n<h2>Introduction to Translation</h2>\n<p>This chapter explains how our genes (<span class=\"important\">DNA</span>) create proteins. A big part of that is a process called <span class=\"important\">translation</span>. Think of translation as converting a message written in one language (<span class=\"important\">DNA</span>'s genetic code) into another language (a protein).</p>\n</body>\n</html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>The Role of Transfer RNA (tRNA)</h2>\n<p>To do this <span class=\"important\">translation</span>, the cell uses special molecules called <span class=\"important\" keyword=\"transfer RNAs (tRNAs)\">________</span>. Each <span class=\"important\">tRNA</span> carries a specific building block for proteins (<span class=\"important\" keyword=\"an amino acid\">________</span>).</p>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Codons and Anticodons: The Key to Accurate Translation</h2>\n<p>To make sure the right building block is used, each <span class=\"highlight\"><span class=\"important\" keyword=\"tRNA\">________</span></span> has a special three-letter code called an <span class=\"highlight\"><span class=\"important\">anticodon</span></span>. This <span class=\"highlight\"><span class=\"important\" keyword=\"anticodon\">________</span></span> is like a key that fits a specific lock – the <span class=\"important\">codon</span> – on the <span class=\"important\">mRNA</span> molecule (a copy of the <span class=\"important\" keyword=\"DNA\">________</span> code). The <span class=\"important\" keyword=\"mRNA codon\">________</span> tells the cell which <span class=\"important\" keyword=\"amino acid\">________</span> is needed next, and the matching <span class=\"important\">tRNA anticodon</span> ensures the right one is added. This accurate pairing is crucial for building the correct protein.</p>\n</body></html>\n"
          ],
          "keywords": [
            "transfer RNAs (tRNAs)",
            "an amino acid",
            "tRNA",
            "anticodon",
            "DNA",
            "mRNA codon",
            "amino acid"
          ]
        }
      }
    },
    {
      "id": 3302,
      "description": "Which of the following element is not found in nitrogenous base :",
      "topic": "Molecular Basis Of Inheritance ",
      "created_at": "2024-07-13T23:16:31.168+05:30",
      "updated_at": "2024-11-30T18:42:56.409+05:30",
      "detailed_solution":
          "**Nitrogenous bases** are organic molecules that contain nitrogen and are a fundamental component of nucleic acids (DNA and RNA). The four nitrogenous bases found in DNA are adenine (A), thymine (T), cytosine (C), and guanine (G). In RNA, thymine is replaced by uracil (U).\n\n**Phosphorus** is not found in nitrogenous bases. Instead, it is found in the sugar-phosphate backbone of nucleic acids. The sugar-phosphate backbone forms the structural framework of nucleic acids and plays a crucial role in maintaining the stability and integrity of the DNA or RNA molecule.\n\n**Additional context:**\n\n* Nitrogenous bases pair up with each other through hydrogen bonding to form base pairs. In DNA, A pairs with T, and C pairs with G. In RNA, A pairs with U, and C pairs with G.\n* The sequence of nitrogenous bases in DNA and RNA determines the genetic code and provides instructions for protein synthesis.\n* Phosphorus is also an important component of many other biological molecules, such as phospholipids (components of cell membranes) and ATP (the energy currency of cells).",
      "is_mandatory": false,
      "topic_id": 150,
      "reading_material_id": 3080,
      "question_from": "Q-bank",
      "options": [
        {
          "id": 13219,
          "description": "Nitrogen",
          "question_id": 3302,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.172+05:30",
          "updated_at": "2024-07-13T23:16:31.172+05:30"
        },
        {
          "id": 13220,
          "description": "Hydrogen",
          "question_id": 3302,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.174+05:30",
          "updated_at": "2024-07-13T23:16:31.174+05:30"
        },
        {
          "id": 13221,
          "description": "Carbon",
          "question_id": 3302,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:31.176+05:30",
          "updated_at": "2024-07-13T23:16:31.176+05:30"
        },
        {
          "id": 13222,
          "description": "Phosphorus",
          "question_id": 3302,
          "is_correct": true,
          "created_at": "2024-07-13T23:16:31.179+05:30",
          "updated_at": "2024-07-13T23:16:31.179+05:30"
        }
      ],
      "reading_material": {
        "id": 3080,
        "keywords": "[\"nitrogenous base\", \"nucleic acid\", \"DNA\", \"RNA\", \"base pairs\"]",
        "created_at": "2024-11-30T18:42:56.329+05:30",
        "updated_at": "2024-11-30T18:42:56.329+05:30",
        "content_sections": [
          "<!DOCTYPE html><html><head><title>DNA and RNA Structure</title></head><body><h1>DNA and RNA Structure</h1><h2>Nucleotides: The Building Blocks</h2><p>DNA and RNA are composed of building blocks called <span class=\"important\"><strong>nucleotides</strong></span>. Each nucleotide consists of three main components:</p><ul>  <li>A <span class=\"important\"><strong>nitrogenous base</strong></span></li>  <li>A <span class=\"important\"><strong>sugar</strong></span></li>  <li>A <span class=\"important\"><strong>phosphate group</strong></span></li></ul>",
          "<h2>Nitrogenous Bases: The Information Carriers</h2><p>The <span class=\"important\">nitrogenous bases</span> are the key components responsible for storing genetic information.  These bases contain carbon, hydrogen, oxygen, and <span class=\"highlight\">nitrogen</span> atoms.</p>",
          "<h2>The Phosphate Group: Linking the Nucleotides</h2><p>The <span class=\"important\">phosphate group</span>, unlike the <span class=\"important\">nitrogenous bases</span>, <em>does</em> contain <span class=\"highlight\">phosphorus</span>.  Its crucial role is to link the individual <span class=\"important\">nucleotides</span> together, forming the long chains characteristic of DNA and RNA molecules.</p>",
          "<h2>Phosphorus's Role in Structure</h2><p>In summary, <span class=\"highlight\">phosphorus</span>, through the <span class=\"important\">phosphate group</span>, is essential for the overall structure of DNA and RNA by connecting the <span class=\"important\">nucleotides</span>. However, it's important to note that <span class=\"highlight\">phosphorus</span> is not a component of the <span class=\"important\">nitrogenous bases</span> themselves, which are the direct carriers of genetic information.</p></body></html>"
        ],
        "practice_material": {
          "content": [
            "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>DNA and RNA Structure</title>\n</head>\n<body>\n<h1>DNA and RNA Structure</h1>\n<h2>Nucleotides: The Building Blocks</h2>\n<p>DNA and RNA are composed of building blocks called <span class=\"important\"><strong>nucleotides</strong></span>. Each nucleotide consists of three main components:</p>\n<ul>  <li>A <span class=\"important\" keyword=\"nitrogenous base\">________</span>\n</li>  <li>A <span class=\"important\" keyword=\"sugar\">________</span>\n</li>  <li>A <span class=\"important\"><strong>phosphate group</strong></span>\n</li>\n</ul>\n</body>\n</html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Nitrogenous Bases: The Information Carriers</h2>\n<p>The <span class=\"important\">nitrogenous bases</span> are the key components responsible for storing genetic information.  These bases contain carbon, hydrogen, oxygen, and <span class=\"highlight\">nitrogen</span> atoms.</p>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>The Phosphate Group: Linking the Nucleotides</h2>\n<p>The <span class=\"important\">phosphate group</span>, unlike the <span class=\"important\">nitrogenous bases</span>, <em>does</em> contain <span class=\"highlight\">phosphorus</span>.  Its crucial role is to link the individual <span class=\"important\">nucleotides</span> together, forming the long chains characteristic of DNA and RNA molecules.</p>\n</body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body>\n<h2>Phosphorus's Role in Structure</h2>\n<p>In summary, <span class=\"highlight\">phosphorus</span>, through the <span class=\"important\" keyword=\"phosphate group\">________</span>, is essential for the overall structure of DNA and RNA by connecting the <span class=\"important\" keyword=\"nucleotides\">________</span>. However, it's important to note that <span class=\"highlight\">phosphorus</span> is not a component of the <span class=\"important\" keyword=\"nitrogenous bases\">________</span> themselves, which are the direct carriers of genetic information.</p>\n</body></html>\n"
          ],
          "keywords": ["nitrogenous base", "sugar", "phosphate group", "nucleotides", "nitrogenous bases"]
        }
      }
    },
    {
      "id": 3378,
      "description":
          "Transfer of genetic information from a polymer of nucleotides to a polymer of amino acids is:",
      "topic": "Molecular Basis Of Inheritance ",
      "created_at": "2024-07-13T23:16:32.489+05:30",
      "updated_at": "2024-11-30T18:43:10.001+05:30",
      "detailed_solution":
          "**Answer: Translation**\n\n**Explanation:**\n\nThe process of transferring genetic information from a polymer of nucleotides (DNA or RNA) to a polymer of amino acids (protein) is known as **translation**. This process is carried out by the ribosomes in the cytoplasm of cells.\n\n**The steps of translation are as follows:**\n\n1. **Initiation:** The ribosome binds to the messenger RNA (mRNA) molecule at the start codon (AUG). A specific transfer RNA (tRNA) molecule carrying the amino acid methionine (Met) binds to the start codon.\n2. **Elongation:** As the ribosome moves along the mRNA, different tRNA molecules carrying specific amino acids bind to their complementary codons on the mRNA. The amino acids are then linked together by peptide bonds to form a polypeptide chain.\n3. **Termination:** Translation is terminated when a stop codon (UAA, UAG, or UGA) is encountered on the mRNA. The polypeptide chain is released from the ribosome and folding begins to form the functional protein.\n\nTherefore, translation is the process that converts the genetic information in nucleotides into the amino acid sequence of a protein.",
      "is_mandatory": false,
      "topic_id": 150,
      "reading_material_id": 3156,
      "question_from": "Q-bank",
      "options": [
        {
          "id": 13523,
          "description": "Replication",
          "question_id": 3378,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.493+05:30",
          "updated_at": "2024-07-13T23:16:32.493+05:30"
        },
        {
          "id": 13524,
          "description": "Transcription",
          "question_id": 3378,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.495+05:30",
          "updated_at": "2024-07-13T23:16:32.495+05:30"
        },
        {
          "id": 13525,
          "description": "Translation",
          "question_id": 3378,
          "is_correct": true,
          "created_at": "2024-07-13T23:16:32.498+05:30",
          "updated_at": "2024-07-13T23:16:32.498+05:30"
        },
        {
          "id": 13526,
          "description": "Reverse transcription",
          "question_id": 3378,
          "is_correct": false,
          "created_at": "2024-07-13T23:16:32.500+05:30",
          "updated_at": "2024-07-13T23:16:32.500+05:30"
        }
      ],
      "reading_material": {
        "id": 3156,
        "keywords":
            "[\"Translation\", \"Genetic Code\", \"Protein Synthesis\", \"Polymer of amino acids\", \"Polymer of nucleotides\"]",
        "created_at": "2024-11-30T18:43:09.921+05:30",
        "updated_at": "2024-11-30T18:43:09.921+05:30",
        "content_sections": [
          "<!DOCTYPE html><html><head><title>Protein Synthesis</title></head><body><h1>From DNA to Protein: Transcription and Translation</h1><section><h2>Introduction to Protein Synthesis</h2><p>Our DNA holds the instructions for building all the proteins our bodies need. These instructions are written in a code using <span class=\"important\">nucleotides</span>, the building blocks of DNA and RNA.</p></section>",
          "<section><h2>Transcription: DNA to mRNA</h2><p>To build a protein, the DNA instructions are first copied into a messenger molecule called <span class=\"important\">mRNA</span> (messenger RNA). This process is called <span class=\"important\">transcription</span>.</p></section>",
          "<section><h2>Translation: mRNA to Protein</h2><p>Then, the <span class=\"important\">mRNA</span> molecule travels to a cellular structure called a <span class=\"important\">ribosome</span>. Here, the process of <span class=\"highlight\"><span class=\"important\">translation</span></span> happens: the <span class=\"important\">ribosome</span> reads the <span class=\"important\">mRNA</span>'s <span class=\"important\">nucleotide</span> code, three <span class=\"important\">nucleotides</span> at a time (these three-<span class=\"important\">nucleotide</span> units are called <span class=\"important\">codons</span>). Each <span class=\"important\">codon</span> specifies a particular <span class=\"important\">amino acid</span>. Other molecules called <span class=\"important\">tRNA</span> (transfer RNA) bring the correct <span class=\"important\">amino acids</span> to the <span class=\"important\">ribosome</span>, one by one, according to the <span class=\"important\">mRNA</span>'s instructions. The <span class=\"important\">ribosome</span> links these <span class=\"important\">amino acids</span> together to form a <span class=\"important\">polypeptide chain</span>—a protein.</p></section>",
          "<section><h2>Summary: The Central Dogma</h2><p>So, <span class=\"highlight\"><span class=\"important\">translation</span></span> is the crucial step where the genetic information encoded in a <span class=\"important\">nucleotide</span> polymer (<span class=\"important\">mRNA</span>) is converted into a polymer of <span class=\"highlight\"><span class=\"important\">amino acids</span></span> (a protein).</p></section></body></html>"
        ],
        "practice_material": {
          "content": [
            "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>Protein Synthesis</title>\n</head>\n<body>\n<h1>From DNA to Protein: Transcription and Translation</h1>\n<section><h2>Introduction to Protein Synthesis</h2>\n<p>Our DNA holds the instructions for building all the proteins our bodies need. These instructions are written in a code using <span class=\"important\">nucleotides</span>, the building blocks of DNA and RNA.</p></section>\n</body>\n</html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><section><h2>Transcription: DNA to mRNA</h2>\n<p>To build a protein, the DNA instructions are first copied into a messenger molecule called <span class=\"important\">mRNA</span> (messenger RNA). This process is called <span class=\"important\">transcription</span>.</p></section></body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><section><h2>Translation: mRNA to Protein</h2>\n<p>Then, the <span class=\"important\">mRNA</span> molecule travels to a cellular structure called a <span class=\"important\">ribosome</span>. Here, the process of <span class=\"highlight\"><span class=\"important\">translation</span></span> happens: the <span class=\"important\">ribosome</span> reads the <span class=\"important\">mRNA</span>'s <span class=\"important\">nucleotide</span> code, three <span class=\"important\" keyword=\"nucleotides\">________</span> at a time (these three-<span class=\"important\">nucleotide</span> units are called <span class=\"important\">codons</span>). Each <span class=\"important\" keyword=\"codon\">________</span> specifies a particular <span class=\"important\" keyword=\"amino acid\">________</span>. Other molecules called <span class=\"important\">tRNA</span> (transfer RNA) bring the correct <span class=\"important\">amino acids</span> to the <span class=\"important\">ribosome</span>, one by one, according to the <span class=\"important\">mRNA</span>'s instructions. The <span class=\"important\">ribosome</span> links these <span class=\"important\">amino acids</span> together to form a <span class=\"important\" keyword=\"polypeptide chain\">________</span>—a protein.</p></section></body></html>\n",
            "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><section><h2>Summary: The Central Dogma</h2>\n<p>So, <span class=\"highlight\"><span class=\"important\" keyword=\"translation\">________</span></span> is the crucial step where the genetic information encoded in a <span class=\"important\" keyword=\"nucleotide\">________</span> polymer (<span class=\"important\" keyword=\"mRNA\">________</span>) is converted into a polymer of <span class=\"highlight\"><span class=\"important\">amino acids</span></span> (a protein).</p></section></body></html>\n"
          ],
          "keywords": [
            "nucleotides",
            "codon",
            "amino acid",
            "polypeptide chain",
            "translation",
            "nucleotide",
            "mRNA"
          ]
        }
      }
    }
  ],
  "progress": 0
};
