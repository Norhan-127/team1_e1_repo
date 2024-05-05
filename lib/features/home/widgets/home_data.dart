

import 'package:flutter/material.dart';
import 'package:team1_e1/features/capsules/ui/screens/capsules_screen.dart';

class HomeModel{
  final String image;
  final String name;
  // final void Function() function;


  HomeModel({required this.image ,required this.name  });

}

List<HomeModel> items =[
  HomeModel(image:'https://s3-alpha-sig.figma.com/img/c6d2/597a/32d25652bfef1b5d06365c73ea071f29?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lN6Thfuv49ODOy6X4bc7k3gnnKEe4HazARhuVMVXSiQEUzCM7WZBzvpexXPb1-Z0Zke0T~c7bhRrmiqgMc0MPGzT9J2ki~HfDBq5L54sdoMC807QYdLH~FlCLRt-Tlp7ipuBb0COIrkfMY6LzNbBJ~cxAr3oc8o7UJLncHNV-6fv2s0aEM1dmuKWEBc3nGJI2Y9-lSLu6EubUIOfQo5Q-Nq4-l34IUkntb6Q7HdnEmSO7tJEUCxW3hriuAiMxmrSNDEabUrKTE-SihVsRNP5TqXkASLQX6bo8aXbiZRtxVO~gwd3VXCMiBStQu75LFOHkTWO4~KnXK~nXX8E9iK7rg__', name: "Capsules"),
  HomeModel(image:'https://s3-alpha-sig.figma.com/img/7d68/6a87/a1ac684f599444b1c9a99800547b303e?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=l~GbXDEZ7EfXvp4PKrb2DuGdOskZ5lOHUaW~TRnbL5GU0LINpkKy2aZgewAHdHu41-O3r0KJkzO6FEqjKMen96d9LML3Gj2CGYL2uF-O6JFtKJEvMBETLoqR4c8pFTXzqLas8YnCUOOKm4bp03JCBQbPAOmdx2xRvLoCmnOoLkvg28stLqMGqvQHX-r2v6e6Is-4VojkoE2IZZouRU3ZekqGurEzLJm6yOTZ1aOhAOvihjgFoBBzZVCNsn6LgGiHpph6y2MsY5FLG1c6U3txO3w3KKK6sMMbRGBB4q8X3R81CNSf2Oqh7Xtqo2gMafwG471H35x-SCQ2eJouaeXXJg__', name: "Dragons", ),
  HomeModel(image:'https://s3-alpha-sig.figma.com/img/d210/1621/91fd0293e45322a690b3c11b3c3b5e73?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gmjwhgxr~uZ8xjryt1IfrjvcIBbAOx-9~vVzxeWnqVCWPmB1WtgRGqv47gP~WdXPtaKVftsgmoa7vnvScYf5ev-OzHHhcUWknfy-it-6gxgh4jO45G6ub2h78cF8WCorxOsVaJd1MPfPm9eseONZe2F7wxWExt-UfzNG0heK5m6odo6WFt1LX~qfloAT2ScC6xVv20xXS5xGO~1eW1k8q277IxSlT0Kj8hl~TsVlBxCEtIBpTDwV9HJ8eVcYFT5vXTnS-~r0fYAsRf4xC0mbpU5-qUvzj9dXUXwSfMEmX0n92jIQjsQUatlz9VygkwfK6yTu4ELes1K7C3XRZC5oiQ__', name: "Rockets", ),
  HomeModel(image:'https://s3-alpha-sig.figma.com/img/885e/939b/33bf99b2b41de2ae5a98f7ff985f53c4?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S~aLprTyTZQjZ5VIfJY1XSgmmIZMrplb6wO6QWxa2Gs8l4S0b6XMj3O5T7V1XbInG8GzKK98O1JIqIpZ-aaEnjWccjHTwzpPqTG8fN-ECeCesPHXZZWcyK0-Ul4RAnae98USABj9Igpk82Eqf9L28KWMHHcTutbgNZQYg9oQX5CXorvfjI83hfqLvmheaXRg-QZV9k3Z0vcD9CCsorXFym8fzEdaOtSFUoX8xZ7HYdwXLbjypvwff-U0fvH9MbEVuz6AlNsCEGDv2AWdbJ6CzBlgM8heGSZKqbDIvON9iGI~QjjBEAi8dDYcPWGvquNzXxJPCkoOsQEpdwIp05kunw__', name: "Crew", ),
  HomeModel(image:'https://s3-alpha-sig.figma.com/img/7d68/6a87/a1ac684f599444b1c9a99800547b303e?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=l~GbXDEZ7EfXvp4PKrb2DuGdOskZ5lOHUaW~TRnbL5GU0LINpkKy2aZgewAHdHu41-O3r0KJkzO6FEqjKMen96d9LML3Gj2CGYL2uF-O6JFtKJEvMBETLoqR4c8pFTXzqLas8YnCUOOKm4bp03JCBQbPAOmdx2xRvLoCmnOoLkvg28stLqMGqvQHX-r2v6e6Is-4VojkoE2IZZouRU3ZekqGurEzLJm6yOTZ1aOhAOvihjgFoBBzZVCNsn6LgGiHpph6y2MsY5FLG1c6U3txO3w3KKK6sMMbRGBB4q8X3R81CNSf2Oqh7Xtqo2gMafwG471H35x-SCQ2eJouaeXXJg__', name: "launches", ),
  HomeModel(image:'https://s3-alpha-sig.figma.com/img/c6d2/597a/32d25652bfef1b5d06365c73ea071f29?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lN6Thfuv49ODOy6X4bc7k3gnnKEe4HazARhuVMVXSiQEUzCM7WZBzvpexXPb1-Z0Zke0T~c7bhRrmiqgMc0MPGzT9J2ki~HfDBq5L54sdoMC807QYdLH~FlCLRt-Tlp7ipuBb0COIrkfMY6LzNbBJ~cxAr3oc8o7UJLncHNV-6fv2s0aEM1dmuKWEBc3nGJI2Y9-lSLu6EubUIOfQo5Q-Nq4-l34IUkntb6Q7HdnEmSO7tJEUCxW3hriuAiMxmrSNDEabUrKTE-SihVsRNP5TqXkASLQX6bo8aXbiZRtxVO~gwd3VXCMiBStQu75LFOHkTWO4~KnXK~nXX8E9iK7rg__', name: "Company", ),



];
